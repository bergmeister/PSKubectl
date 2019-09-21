using System;
using System.Collections.Generic;
using System.Linq;
using System.Management.Automation;
using System.Threading;
using System.Threading.Tasks;
using KubeClient;
using KubeClient.Models;
using KubeClient.ResourceClients;
using Microsoft.Extensions.Logging;

namespace Kubectl.Cmdlets {
    [Cmdlet(VerbsCommon.Get, "KubeDeployment")]
    [OutputType(new[] { typeof(DeploymentV1) })]
    public sealed class GetKubeDeploymentCmdlet : KubeApiCmdlet {
        [Parameter(ValueFromPipelineByPropertyName = true)]
        [Alias("Ns")]
        public string Namespace { get; set; } = "default";

        [Parameter()]
        public string LabelSelector { get; set; }

        [Parameter(Position = 0, ValueFromPipeline = true, ValueFromPipelineByPropertyName = true)]
        [SupportsWildcards()]
        public string Name { get; set; }

        protected override async Task ProcessRecordAsync(CancellationToken cancellationToken) {
            await base.ProcessRecordAsync(cancellationToken);
            IEnumerable<DeploymentV1> deploymentList;
            if (String.IsNullOrEmpty(Name) || WildcardPattern.ContainsWildcardCharacters(Name)) {
                deploymentList = await client.DeploymentsV1().List(
                    kubeNamespace: Namespace,
                    labelSelector: LabelSelector,
                    cancellationToken: cancellationToken
                );
            } else {
                DeploymentV1 deployment = await client.DeploymentsV1().Get(
                    name: Name,
                    kubeNamespace: Namespace,
                    cancellationToken: cancellationToken
                );
                deploymentList = new[] { deployment };
            }
            if (WildcardPattern.ContainsWildcardCharacters(Name)) {
                var pattern = new WildcardPattern(Name);
                deploymentList = deploymentList.Where(deployment => pattern.IsMatch(deployment.Metadata.Name));
            }
            WriteObject(deploymentList, true);
        }
    }
}

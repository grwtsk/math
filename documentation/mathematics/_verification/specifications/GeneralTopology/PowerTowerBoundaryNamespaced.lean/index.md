# Verification target: Power Tower Boundary Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31cc98fc1e3c21de40794129f1cfb6d5f60a1e23",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PowerTowerBoundary/Variant46fa6aabc46e8559cbf17cd199f28ba14a7b9f8d93a865b235db9285dc040fba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31cc98fc1e3c21de40794129f1cfb6d5f60a1e23`.

Source path: `GRWTSK/Topology/GeneralTopology/PowerTowerBoundary/Variant46fa6aabc46e8559cbf17cd199f28ba14a7b9f8d93a865b235db9285dc040fba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PowerTowerBoundary/Variant46fa6aabc46e8559cbf17cd199f28ba14a7b9f8d93a865b235db9285dc040fba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Exponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.MobiusOntology.PerturbedBoundary` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PowerTowerDynamics](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertowerdynamics.md) | 25 | `declaration-track:016bd83057a08190b32ef536e4a69b206a115209b85909790a8707db2c4edf3b` |
| 2 | `def` | [PowerTowerDynamics.derivativeFactor](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertowerdynamics-derivativefactor.md) | 50 | `declaration-track:31a52fd3bedc5d736df6303f1294a4f278c1e5d91a8a0013dab1488a591e1a28` |
| 3 | `def` | [PowerTowerDynamics.derivativeMagnitudeAt](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertowerdynamics-derivativemagnitudeat.md) | 54 | `declaration-track:fdab3807d494fd1d51e40fe6a8b5bbc1c403e1aab8c2f651df82ad4c982bba5b` |
| 4 | `def` | [PowerTowerDynamics.verificationResidual](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertowerdynamics-verificationresidual.md) | 59 | `declaration-track:2d61d75cc7a41d85bc13f45776841799d773d496a775d240a952472f45118acb` |
| 5 | `theorem` | [PowerTowerDynamics.exact_verificationResidual_eq_zero](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertowerdynamics-exact-verificationresidual-eq-zero.md) | 64 | `result-track:740621a3eedef6e5d114d2f9d0ca73d77d11aada9c38c330584a9dd704781d80` |
| 6 | `def` | [PowerTowerDynamics.verificationLeftInverse](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertowerdynamics-verificationleftinverse.md) | 73 | `declaration-track:3c217ffadeaf59d6418fda79dc224e5697f5bad7227f70e4d786c6ae7e77f547` |
| 7 | `theorem` | [PowerTowerDynamics.step_injectiveOn](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertowerdynamics-step-injectiveon.md) | 86 | `result-track:78b1244bbae3ab016f7016cb7b95dd8c3f6635ea8cf1f857a210c468f3d5db47` |
| 8 | `inductive` | [PowerTowerBasinGeometry](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertowerbasingeometry.md) | 91 | `declaration-track:6c051c0c13487d94626a78e6e327fcf18c6b6ec5f558b34c4db092399b64aadc` |
| 9 | `structure` | [PowerTowerDerivativeToLipschitzBridge](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertowerderivativetolipschitzbridge.md) | 102 | `declaration-track:c495ec6326bf92d356d688f5edadc7579b4b8324257c01c33f945f31c9344c58` |
| 10 | `structure` | [PowerTowerBoundaryCertificate](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertowerboundarycertificate.md) | 121 | `declaration-track:76979cb92610b06206a95f214b8431e1bf469d65e2ef9b929750e381ccdb01f2` |
| 11 | `structure` | [PowerTowerImplementationCertificate](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertowerimplementationcertificate.md) | 141 | `declaration-track:6deaaba94231a83d642e30aa8736d92397fcdf3679579294363676f0574534bf` |
| 12 | `def` | [PowerTowerImplementationCertificate.toPerturbedBoundary](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertowerimplementationcertificate-toperturbedboundary.md) | 169 | `declaration-track:77b2eeb8ce605b4f54b943ce166f37453461fb650cc91295fa6b92e766e79165` |
| 13 | `structure` | [PowerTowerResidualLedgerEntry](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertowerresidualledgerentry.md) | 183 | `declaration-track:4b4b51d30efb73ee8c69cdc641104eb82e683dc6f5cb069a24baf61b776fc019` |
| 14 | `def` | [PowerTowerImplementationCertificate.residualLedgerEntry](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertowerimplementationcertificate-residualledgerentry.md) | 187 | `declaration-track:569227d4d3c0883cf1f1341ac924ea66758dab4017c3c4cde7cf4e77c99be59e` |
| 15 | `def` | [finitePowerTower](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/finitepowertower.md) | 201 | `declaration-track:889ec527e87ba672eb53a85863fb55c0477562e8701b3bb80c2fafa84d8fa6c4` |
| 16 | `theorem` | [finitePowerTower_eq_scheduleIteration](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/finitepowertower-eq-scheduleiteration.md) | 209 | `result-track:4e3e7c8cc9ae6d71fefae6cb9630c41907757c01aa4347c90304048198ec4086` |
| 17 | `theorem` | [powerTower_tendsto_boundary](../../../../GeneralTopology/PowerTowerBoundaryNamespaced.lean/declarations/powertower-tendsto-boundary.md) | 225 | `result-track:f54a0bad0aab23b36a08f2a5466a84077b3ab93dfdb91d98c3bceef072ce07d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c56a0183c73ad4fc77c14a550a9201109a7acf2071ea248e27ac061defc491e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PowerTowerBoundary/Variant46fa6aabc46e8559cbf17cd199f28ba14a7b9f8d93a865b235db9285dc040fba.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PowerTowerBoundary/Variant46fa6aabc46e8559cbf17cd199f28ba14a7b9f8d93a865b235db9285dc040fba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Derivation Namespaced Transfer Edge Kind

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41cd029be2cacea36e5b3716963b31ff5d717fb5",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41cd029be2cacea36e5b3716963b31ff5d717fb5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.TheoremTransfer.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TransferEdgeKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transferedgekind.md) | 25 | `declaration-track:a92d4f63e65ebaa3c06dc46d9e3aefafb20258dd4d446362de6215ad4afc2331` |
| 2 | `inductive` | [ArtifactSemanticRole](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/artifactsemanticrole.md) | 46 | `declaration-track:4139f508807cbf3cf6016bdbc831cb653f7a28ce4fecf1e7f38c6d8543f620c5` |
| 3 | `structure` | [TypedVersionId](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/typedversionid.md) | 65 | `declaration-track:c1f81ba965156ab54f97aa7dc6644528f373070b1924247c9bac1c834d31ff48` |
| 4 | `structure` | [RoleBoundArtifact](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/roleboundartifact.md) | 70 | `declaration-track:76fc625da53795402971f5f85012d6d9347eb5495e0dd3fb6c2a1c7c27621dc7` |
| 5 | `inductive` | [TransferNodeKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transfernodekind.md) | 75 | `declaration-track:d5bab8e5be6051fd719c95c213deef4528fc06bb897be95565497a456238b969` |
| 6 | `structure` | [TransferNode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transfernode.md) | 109 | `declaration-track:e49427346b69b881c84fe985cfb97e0a3d048709fe81c143ca4465d8ca7c17f2` |
| 7 | `structure` | [TransferEdge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transferedge.md) | 118 | `declaration-track:5410fc9e8d9e54e3f500ab0839ee5996993f8570f1a77d986baccdcf56893df4` |
| 8 | `structure` | [TransferNodeValidationPolicy](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transfernodevalidationpolicy.md) | 126 | `declaration-track:00d94833a5fb7ba79cdff01b4f4817b7fb9bd4204c14406924aae214936fce83` |
| 9 | `structure` | [TransferNodeValidation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transfernodevalidation.md) | 131 | `declaration-track:ea713cf04ed615bc0bfa61c9df578e8455c6460cfa956e3aad183c65b8fb302e` |
| 10 | `structure` | [TransferDependencyGraph](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transferdependencygraph.md) | 142 | `declaration-track:4332ab5cbe4e11a07d4c9e22e5e0a77d9a5ea807512a7e3cb5ceb08b47ca10f9` |
| 11 | `theorem` | [no_self_dependency](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/no-self-dependency.md) | 162 | `result-track:6052249ffdb2c01e10e5dc5a1f61551ee71b6edc20382b42a247b830967a6066` |
| 12 | `theorem` | [no_payload_self_dependency](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/no-payload-self-dependency.md) | 169 | `result-track:8e3c499816d34fdc3a520f9061f7c2e248354bfdaf488fc252e6bdbef7e384e0` |
| 13 | `theorem` | [payload_distinct_of_dependency](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/payload-distinct-of-dependency.md) | 179 | `result-track:4fd495b69483de03695d2141022b44cf983fc67d7b86310bb89aa51e9d1871ba` |
| 14 | `theorem` | [artifact_distinct_of_dependency](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/artifact-distinct-of-dependency.md) | 187 | `result-track:a972a988b44d7fc437dc63427bad79dc3a2b1f002df24cba80a7426ca4186319` |
| 15 | `inductive` | [TransferSoundnessLevel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transfersoundnesslevel.md) | 199 | `declaration-track:4447475113647dfee170cc2e34801d535ec09218102e2e658499ffdb1fc03ccb` |
| 16 | `inductive` | [TransferLifecycleState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transferlifecyclestate.md) | 209 | `declaration-track:5f91fab619c0f2495b757cb76cfe1f0a2c964f7c0c5b146a4fac106b0e7d1722` |
| 17 | `structure` | [TransferLifecycleLedger](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transferlifecycleledger.md) | 219 | `declaration-track:8bde442bd3a3ef57dc6472d8f85d49e1b211276594a002dd1e57b4ebdf037959` |
| 18 | `inductive` | [OperationalAdoptionStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/operationaladoptionstatus.md) | 227 | `declaration-track:d804804ff3b38c684cb40616be7bc96c6cf9db5e8dfdb8db644de1a819612b0d` |
| 19 | `structure` | [TransferOperationalAdoption](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transferoperationaladoption.md) | 235 | `declaration-track:84e9a726d32b77fc6f826d90456fb1ddbb28dad280cfafa4d08c3b416f760fff` |
| 20 | `inductive` | [TransferCompletenessStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transfercompletenessstatus.md) | 242 | `declaration-track:dbc5f421fbe7ea73e308ab84f2fcf077b0dd9a52c1370026e05975f958989140` |
| 21 | `structure` | [TransferCompletenessAssertion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transfercompletenessassertion.md) | 250 | `declaration-track:4af257164c7e802d3fa393a62ea6a4ca0947a473e3f38d88b434ca9d0145438b` |
| 22 | `inductive` | [TransferAuditStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transferauditstatus.md) | 260 | `declaration-track:896ef2ae07309fba560fd80841fd23a47f1a12333c66243ed80bccbf77ef9377` |
| 23 | `structure` | [TransferAuditRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transferauditrecord.md) | 268 | `declaration-track:a2e5556e8f9c75fc4429bb3beb935298fd986b8d8ee92143c67deb74210c719a` |
| 24 | `structure` | [RepresentationIndependenceClaim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/representationindependenceclaim.md) | 276 | `declaration-track:c973add51aa8ae9ec13c33f37c5bcb3ee3c9773d68e24ebd0da3cbb250f77760` |
| 25 | `structure` | [ProofPreservationClaim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/proofpreservationclaim.md) | 317 | `declaration-track:4c030eb5a079e9ed98cc5d4013f37c0203dad2abd6ee30d57dcbf37f6f6a574f` |
| 26 | `structure` | [SyntacticTranslationEvidence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/syntactictranslationevidence.md) | 345 | `declaration-track:baa86fbff7def60bb0fe28e63b2bd894fa58d066caabdf0f59dd278c8f80d85c` |
| 27 | `inductive` | [TransferSoundnessEvidence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/transfersoundnessevidence.md) | 352 | `declaration-track:1614299d4643f2459eacc2cba56f288881648eef302536bbe7d16c5772c802f7` |
| 28 | `inductive` | [TranslationLineageRealization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/translationlineagerealization.md) | 402 | `declaration-track:1f65b83d396cf0b89494bbbd50b978b2864e3dc94dc74ab1b1a34dea8bcb43cf` |
| 29 | `theorem` | [rankIncreases](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/rankincreases.md) | 432 | `result-track:dad01f81d0f071a4708f4d21e6d2d2db348630dac660aaa0c48e4d05a4120855` |
| 30 | `theorem` | [compositeHasOrderedMiddle](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/compositehasorderedmiddle.md) | 446 | `result-track:7cd9f8ab2469bcdb7dec57ca22f1d0821e0689b28c2121111a61f15c48c21246` |
| 31 | `structure` | [TheoremTransferDerivation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/theoremtransferderivation.md) | 471 | `declaration-track:4e7ec0041f2daf903fab03e5618e96046c027bfc6f3045ad93eba3ce215a2aed` |
| 32 | `inductive` | [MultiSourceInferenceExpression](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/multisourceinferenceexpression.md) | 564 | `declaration-track:be5b3dea5602bc5f5031391c53e8a2d04899ed1b7deceab43c356e5a8a5eb909` |
| 33 | `def` | [interpret](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/interpret.md) | 587 | `declaration-track:60d32b7a2b8275a38c2e9e604b5b462b70d775dba883aaa7665c485c4b758e08` |
| 34 | `def` | [UsesSource](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/usessource.md) | 602 | `declaration-track:dbc4ae12c31505a9f3c34efa4955a61b3158d02fb9bd5f744ecb558d49a51393` |
| 35 | `structure` | [MultiSourceLeafDependency](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/multisourceleafdependency.md) | 621 | `declaration-track:3a0aa958b04ac3a057d9e7d95ac60c032b3a8bbd056641a569ad0f25ce2eacf8` |
| 36 | `structure` | [MultiSourceTheoremTransferDerivation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/multisourcetheoremtransferderivation.md) | 636 | `declaration-track:9d134b1f8e6d53d9bca1706b308a47e54f553b2712086ae7b729e65badcd8448` |
| 37 | `theorem` | [hasDistinctFanIn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/hasdistinctfanin.md) | 776 | `result-track:22a7b87d055272520479d4922db190b1908c746f636c80b8dec4a8c4a187c59f` |
| 38 | `theorem` | [sourceLeafCoverage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/sourceleafcoverage.md) | 798 | `result-track:96d680ba960eb23e8b5b1fe5e06dcec4e956be909c86652adefe53bcad920e38` |
| 39 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/comp.md) | 814 | `declaration-track:06cd0182550204371ac9cd8b6411f36d932a8352ba3d281516a70c178e29f46b` |
| 40 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/comp-source-edition-2.md) | 847 | `declaration-track:50b0db4c9c5dbc10c0ce3610a95bbbdaa7bc250fc28d240ba5303793693daf16` |
| 41 | `structure` | [CompositeTransferDerivation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/compositetransferderivation.md) | 881 | `declaration-track:ab4a35dbde7a715f1058b66ac0cf646d97812cedff82b99ce6738b2dbc097bd4` |
| 42 | `def` | [composedTargetTheorem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationNamespacedTransferEdgeKind.lean/declarations/composedtargettheorem.md) | 963 | `declaration-track:3e1d656e86d43dc663e65c36509c07b8fef676c196359a169a3deed004deddef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e61306bbffdcc99d322807e3c780051c06ef713dc964bf360f36b53045a525cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Resolver Namespaced Normalization Phase Certificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40ff78ba6130f55e4420b0bc5468e146690998f1",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Varianteb9148a7fc56bb3e52a221c16013aa15b9a0007a1c8761a1ee775c1e0b43632d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40ff78ba6130f55e4420b0bc5468e146690998f1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Varianteb9148a7fc56bb3e52a221c16013aa15b9a0007a1c8761a1ee775c1e0b43632d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Varianteb9148a7fc56bb3e52a221c16013aa15b9a0007a1c8761a1ee775c1e0b43632d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Resolution` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NormalizationPhaseCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/normalizationphasecertificate.md) | 21 | `declaration-track:85d03785bb094f6836bc5c59ed94e9fbc8d2b5e56de8b93c4e515fe78c8743b3` |
| 2 | `structure` | [AssertionAcceptanceResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/assertionacceptanceresult.md) | 27 | `declaration-track:06b0aab059b3689b029d62ac44640ebc09a4430415e61eee2acd34ac76c1076b` |
| 3 | `structure` | [EvidenceAdjudicationResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/evidenceadjudicationresult.md) | 32 | `declaration-track:ee3f74c6048caed839ac42f666962997b1e30f7cdcf3f4abcebd0898ce2288e4` |
| 4 | `structure` | [BoundaryResolutionResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/boundaryresolutionresult.md) | 37 | `declaration-track:e71c02427166a6e1987d8fddf7bf7f3a5deea93d40054cfc3c0478e114de33d8` |
| 5 | `structure` | [SegmentationResolutionResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/segmentationresolutionresult.md) | 42 | `declaration-track:342498cf0e5c05338c53be98bec44f01ce22909dad7a3c0f9219006c63dca418` |
| 6 | `structure` | [TokenGraphResolutionResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/tokengraphresolutionresult.md) | 47 | `declaration-track:b45c5a107d995def28763f83008f82918d1b2df7ce9ae7f8420428d7c31cc8b0` |
| 7 | `structure` | [PhraseResolutionResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/phraseresolutionresult.md) | 56 | `declaration-track:3109a4aa50222826ea9a4a9eef0f8d2328b303150a7597e0fa3b3f440a07d97b` |
| 8 | `structure` | [InterpretationResolutionResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/interpretationresolutionresult.md) | 62 | `declaration-track:9d4b3f738aac4e2ad82721044ad4d4b5ee5837fffea4b31a308da8620c13a747` |
| 9 | `structure` | [ConceptProfileResolutionResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/conceptprofileresolutionresult.md) | 67 | `declaration-track:1a6859c613b6b9c81ec9df43721d130956b2a2ad870927325d31582cf2627514` |
| 10 | `structure` | [SubstitutionResolutionResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/substitutionresolutionresult.md) | 72 | `declaration-track:f4f366f09d5bbedb9f7e385597d90b5c116c2010461749f8c6d6519f4d16b0f7` |
| 11 | `structure` | [NetworkResolutionResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/networkresolutionresult.md) | 77 | `declaration-track:f213a20a3ab0ba067367f7656c7962c8365a0866d0b3fd4170aac84a446269f3` |
| 12 | `structure` | [ResolverState](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/resolverstate.md) | 82 | `declaration-track:41e50295efe93f0d60d332f98846227751a68842ed6aa8e7ced20d2033a0af6c` |
| 13 | `def` | [validateCut](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/validatecut.md) | 88 | `declaration-track:60be43bec1f28a39e4401d2b4cf47f3613fa2fca99ed7b29aaaafc74bf797add` |
| 14 | `def` | [verifyNormalization](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/verifynormalization.md) | 103 | `declaration-track:4367545dd606cac462f5e1fc02105c1e2d5bba04b33716dbacf953028416c5de` |
| 15 | `def` | [verifyCandidateCoverage](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/verifycandidatecoverage.md) | 124 | `declaration-track:06bf6109047bbd4bc653dc2f40e1948d159918b94430f06ef7c6cc18c3c3f7b0` |
| 16 | `def` | [verifyBaseTokenization](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/verifybasetokenization.md) | 146 | `declaration-track:facd051985e1fd2d4aae9deb3012151dd5f70adbb310d79b9f98878215868a1f` |
| 17 | `def` | [acceptAssertions](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/acceptassertions.md) | 166 | `declaration-track:c490fa7b57aeb5aefb6fe55fc1817aa1bad4cd16c52b333b11873a511a04387e` |
| 18 | `def` | [adjudicateEvidence](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/adjudicateevidence.md) | 174 | `declaration-track:6e16b84ba936a645ba3bb7d71cf9895957e478a5c29476e7cc071dc951943116` |
| 19 | `def` | [computeBoundaries](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/computeboundaries.md) | 180 | `declaration-track:3dff6fa3febab123a13de879a2aeae285cd5b244bf92d3039047a201739b7d7f` |
| 20 | `def` | [constructSegmentations](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/constructsegmentations.md) | 186 | `declaration-track:7e2df574d7ccccae489b026c951066050847ee065cb87eb2d9239fb127aba740` |
| 21 | `def` | [constructTokenGraphs](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/constructtokengraphs.md) | 192 | `declaration-track:3b017fac8e9009e173b11bdea474b7cb43dcb405ac0350d77eb42433114c6b1a` |
| 22 | `def` | [verifyPhraseComposition](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/verifyphrasecomposition.md) | 198 | `declaration-track:4b870ba705a2825e79e311555dfa9582404a6815a6d48e5aa8c799bcc3d4810f` |
| 23 | `def` | [importCertifiedReadings](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/importcertifiedreadings.md) | 205 | `declaration-track:87e972371ba31cecc32c18219ae588b94093160ea630fa600f48da3391438ac8` |
| 24 | `def` | [constructConceptProfiles](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/constructconceptprofiles.md) | 213 | `declaration-track:7030b7dadce1d37071debc1d2cb3617d22e97782d992f4bcfa356db1fdcd9139` |
| 25 | `def` | [verifySubstitutions](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/verifysubstitutions.md) | 219 | `declaration-track:c41a30a8f77c5e02d6557b614037ce3030b0728ba31990af82c29dda9c3d85e7` |
| 26 | `def` | [constructIdiomConceptNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/constructidiomconceptnetwork.md) | 225 | `declaration-track:b711b565a31700d6b7ce787d18dcb014e75e12929d11a1346c86f90cd264785a` |
| 27 | `def` | [exposeNextUnknownLayer](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/exposenextunknownlayer.md) | 231 | `declaration-track:670e630ea061d5a5eb6586c789a46a76172961e18d40fa4a8f3fc4ebb1965991` |
| 28 | `def` | [interpretationFrontier](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/interpretationfrontier.md) | 237 | `declaration-track:9d1ea09e643dbdb0c4a7127df207f110e201c7e446b0ca412884cbbccdbdb230` |
| 29 | `def` | [resolveValidatedCut](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/resolvevalidatedcut.md) | 256 | `declaration-track:e23757b73e82e966d733f7bd0fc89c454f7b1d96d2ec62d1210bb303bd4b1d59` |
| 30 | `def` | [resolveMetaOverlapSemantics](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/resolvemetaoverlapsemantics.md) | 265 | `declaration-track:5089320c82bbbd17155557704936cbb663fb6de16a0e6144af413302fcb0306d` |
| 31 | `theorem` | [resolve_total](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/resolve-total.md) | 274 | `result-track:581fcfc9189702614050ca51ffc5e5b89740847deb020fec60d4b89bf8bfad0d` |
| 32 | `theorem` | [resolve_deterministic](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/resolve-deterministic.md) | 280 | `result-track:d3e4308e726392c5643407395c741444d7fa28b3c341d8f2f9802dc6d7a15ceb` |
| 33 | `theorem` | [structurallySolved_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/structurallysolved-sound.md) | 289 | `result-track:1449221a80b9a02b5f9730a970eb18a9e2ca091c32cfa54919dd63a1815de0d1` |
| 34 | `theorem` | [structurally_solved_preserves_semantic_frontier](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/structurally-solved-preserves-semantic-frontier.md) | 308 | `result-track:1a97570c1ed741584b4922ababcc597b66efcbfc74abf076b55f50551f1032f8` |
| 35 | `theorem` | [solved_semantic_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/ResolverNamespacedNormalizationPhaseCertificate.lean/declarations/solved-semantic-sound.md) | 336 | `result-track:b6eb1962216f9b793a433560911082395075e4fb5aca121e317307388b96daf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b82710bb929b7768597e1c792ba035ce4a297389e39cfb668f1a0c9b967a262 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Varianteb9148a7fc56bb3e52a221c16013aa15b9a0007a1c8761a1ee775c1e0b43632d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Varianteb9148a7fc56bb3e52a221c16013aa15b9a0007a1c8761a1ee775c1e0b43632d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

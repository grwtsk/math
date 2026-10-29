# Verification target: Bitfield

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6188ed5b51a44e2d728898fd13e9d17f69005063",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Bitfield/Variant59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/Bitfield.lean/index.md) · [Full source](../../../../FunctionalAnalysis/Bitfield.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6188ed5b51a44e2d728898fd13e9d17f69005063`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Bitfield/Variant59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Bitfield/Variant59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SpectralId](../../../../FunctionalAnalysis/Bitfield.lean/declarations/spectralid.md) | 14 | `declaration-track:0d61523ec4cafd45f4ee376aedc407c93e7648ec6460d981dd8eb2dd691f520b` |
| 2 | `abbrev` | [Bitfield](../../../../FunctionalAnalysis/Bitfield.lean/declarations/bitfield.md) | 15 | `declaration-track:c31fa9f043d1d10ff69cc0178a3c97b0d4e7837d0c312f2525fa5924a7e585d5` |
| 3 | `inductive` | [ProofDisposition](../../../../FunctionalAnalysis/Bitfield.lean/declarations/proofdisposition.md) | 17 | `declaration-track:feffc95fc4e3a4b3d1fd73bacf02f39255868cd3ae91ab7ffb7e67875a0044a1` |
| 4 | `inductive` | [CoordinateAuthority](../../../../FunctionalAnalysis/Bitfield.lean/declarations/coordinateauthority.md) | 23 | `declaration-track:c82ef034a7c16fa666428e643c0de84dd74dc808962d7c47459d64700c487676` |
| 5 | `inductive` | [WeightKind](../../../../FunctionalAnalysis/Bitfield.lean/declarations/weightkind.md) | 29 | `declaration-track:68fcdcb001e48dd3380c99cdc1c90eef351c2edbed4c86f692f1eed4f1b17ec6` |
| 6 | `structure` | [BitCoordinate](../../../../FunctionalAnalysis/Bitfield.lean/declarations/bitcoordinate.md) | 38 | `declaration-track:831f72530220fb59f4621fbd49123be764d39ed9b1fdac68eb1b38a785aa03fe` |
| 7 | `structure` | [CoordinateRegistry](../../../../FunctionalAnalysis/Bitfield.lean/declarations/coordinateregistry.md) | 53 | `declaration-track:5e58964ae04e61c7889dc4e0d9fdb3512338b179c62de4e860f07771f86729ef` |
| 8 | `def` | [AdmissibilityMask](../../../../FunctionalAnalysis/Bitfield.lean/declarations/admissibilitymask.md) | 57 | `declaration-track:5c9f37e6a650a3df5863bd71806996110fa17d0bb54717331c8596538d115939` |
| 9 | `def` | [flipAt](../../../../FunctionalAnalysis/Bitfield.lean/declarations/flipat.md) | 60 | `declaration-track:97c5dbb3224d3ff48432ba3bb20da28bf7266418498e953beba6c4f022ed9d74` |
| 10 | `theorem` | [flipAt_selected](../../../../FunctionalAnalysis/Bitfield.lean/declarations/flipat-selected.md) | 68 | `result-track:5ce321e783bbd2006900edaa4a981a47bc32c404769d8f18f59f5db60acdfd57` |
| 11 | `theorem` | [flipAt_other](../../../../FunctionalAnalysis/Bitfield.lean/declarations/flipat-other.md) | 75 | `result-track:a96320b72d736e019f55d920d756fc938de8291931dbd7ef6bf4dbe38e9014bb` |
| 12 | `theorem` | [flipAt_involutive](../../../../FunctionalAnalysis/Bitfield.lean/declarations/flipat-involutive.md) | 83 | `result-track:df41a74e7b5013bd40a4ced44fc08230ae93541cde65b88ddce510b35eb94a5a` |
| 13 | `theorem` | [every_coordinate_has_registered_semantics](../../../../FunctionalAnalysis/Bitfield.lean/declarations/every-coordinate-has-registered-semantics.md) | 94 | `result-track:201804b0c38d69bfbcebc6a0c68c7ff38e6853bd3ef2555699cec979ca4946d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1156df066b561f1b4eee9cd1b440fd4fab8faa49720298242a498b218ec72a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Bitfield/Variant59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Bitfield/Variant59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

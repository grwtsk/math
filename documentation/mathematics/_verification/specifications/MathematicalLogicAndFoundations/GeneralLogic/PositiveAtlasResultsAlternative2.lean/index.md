# Verification target: Positive Atlas Results Alternative2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b42820c11d82506616c5ec37f067922374822d53",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variantaea99d284c64b5da7cff0727a5a0772d2ccfb153b260dd8fe670ab2fbde9d05b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b42820c11d82506616c5ec37f067922374822d53`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variantaea99d284c64b5da7cff0727a5a0772d2ccfb153b260dd8fe670ab2fbde9d05b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variantaea99d284c64b5da7cff0727a5a0772d2ccfb153b260dd8fe670ab2fbde9d05b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Certification` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Operations` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comparisonMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/comparisonmap.md) | 37 | `declaration-track:c8f4bf15818b04e6150146a62f825e64c5500794e50c5dc9d38fa4f7c243d9fe` |
| 2 | `theorem` | [comparisonMap_compress](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/comparisonmap-compress.md) | 44 | `result-track:223e9120f038810cd0c86cbb014ca3714c24e99eabd8edb711be5a28a7d72aac` |
| 3 | `theorem` | [map_unique_on_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/map-unique-on-image.md) | 52 | `result-track:3b14892a0c66ad159aca9bdaf3b14b6a2a7b51583aead1a92819d8a4b242cd00` |
| 4 | `theorem` | [map_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/map-unique.md) | 64 | `result-track:6ece1b9e2d5392ebeebda7fc13c15bf13600cd53dbc8764a790af2ee53160e23` |
| 5 | `def` | [minimalEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/minimalequiv.md) | 77 | `declaration-track:a098dab4ebd75e805d6f2fe6cb0c08f7d1bce832bb76c7d4d3a8856105297797` |
| 6 | `theorem` | [minimalEquiv_compress](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/minimalequiv-compress.md) | 96 | `result-track:405b7c125cdbec49aa0643adea5c3c49ace3f6310d6a6bc0a1080469d412c597` |
| 7 | `theorem` | [minimalEquiv_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/minimalequiv-unique.md) | 107 | `result-track:21feaac3d623163c1cdb28b9e210e0b0e06697b88be8ac73c85413829057a022` |
| 8 | `theorem` | [minimalEquiv_existsUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/minimalequiv-existsunique.md) | 124 | `result-track:f4c37e45db9ba2fbf68341b07730ab5e7897f8fc61f4f2ddab645a05272f948b` |
| 9 | `def` | [reachableEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/reachableequiv.md) | 142 | `declaration-track:da3b68ecf744cb61b1a7582b3c44dfd25de89f7c33582ed9bbca699e4db36ed3` |
| 10 | `theorem` | [minimalEquiv_recover](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/minimalequiv-recover.md) | 169 | `result-track:6ba123ed9d484b5630c1c261440a4e1e516fecd1c4bc493de941d66603f0bbdb` |
| 11 | `theorem` | [minimalEquiv_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/minimalequiv-refl.md) | 180 | `result-track:38cca07c94cec45b9b7a6e7e8da287a038b0d7ecda06e761032be33114a78767` |
| 12 | `theorem` | [minimalEquiv_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/minimalequiv-symm.md) | 188 | `result-track:30c84aacc9525611f81f8bb915174e9bf1c7a4d2f37cd4c071b2ed86b96acab8` |
| 13 | `theorem` | [minimalEquiv_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/minimalequiv-trans.md) | 200 | `result-track:cf3d69b94d1aa9c146ecff21d4dbc2ae191cce595e6b731405bd66914b407e66` |
| 14 | `theorem` | [compress_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/compress-surjective.md) | 227 | `result-track:4179d8918b1bd335683367c966148ef22d9a939605cd71f2a61bcb5deab5c6a9` |
| 15 | `def` | [comparison](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/comparison.md) | 233 | `declaration-track:eb1cc44f2ae5f11ab18f81464c48d8c122fc633c0ed24ab7da21d313f21b026a` |
| 16 | `theorem` | [comparison_compress](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/comparison-compress.md) | 240 | `result-track:4cececc73ca48caba01bc9145e7c459dc8a05708b51fee456212886306ce9116` |
| 17 | `theorem` | [comparison_recover](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PositiveAtlasResultsAlternative2.lean/declarations/comparison-recover.md) | 246 | `result-track:0cc41dfeb8fbf02d1310c608c66a4342613dc5aad665c9518160a06503beb0fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd266e67a2c6c68889a2880f6e76fe3da8f0708515c6e7f499a6245bddec9b27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variantaea99d284c64b5da7cff0727a5a0772d2ccfb153b260dd8fe670ab2fbde9d05b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variantaea99d284c64b5da7cff0727a5a0772d2ccfb153b260dd8fe670ab2fbde9d05b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

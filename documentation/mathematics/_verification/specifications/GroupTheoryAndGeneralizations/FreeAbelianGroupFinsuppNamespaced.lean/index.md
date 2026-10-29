# Verification target: Free Abelian Group Finsupp Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "949c37bb9d0ebb6f5cd02d79858679bc3204fa45",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Variant10dc348ca9ea123fafc7a248a18f51b4ecd1792536f111565729172faae6788e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `949c37bb9d0ebb6f5cd02d79858679bc3204fa45`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Variant10dc348ca9ea123fafc7a248a18f51b4ecd1792536f111565729172faae6788e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Variant10dc348ca9ea123fafc7a248a18f51b4ecd1792536f111565729172faae6788e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.TypeTags` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeAbelianGroup` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.IsFreeGroup` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeAbelianGroup.toFinsupp](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/freeabeliangroup-tofinsupp.md) | 45 | `declaration-track:9023de8f92fe7bfa97e0c62f32b810f4ed5fee7b1803011bea160ee2a7b0c84e` |
| 2 | `def` | [Finsupp.toFreeAbelianGroup](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/finsupp-tofreeabeliangroup.md) | 50 | `declaration-track:35172bbda7d7f2a6ba9e859f8fe9e83e26de1e16a18b6305e50567a8c5e65a86` |
| 3 | `theorem` | [Finsupp.toFreeAbelianGroup_comp_singleAddHom](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/finsupp-tofreeabeliangroup-comp-singleaddhom.md) | 57 | `result-track:7ac289b3347df3147b3e557ffa1ec1e7288f704f5e503290caa5cc98c857cace` |
| 4 | `theorem` | [FreeAbelianGroup.toFinsupp_comp_toFreeAbelianGroup](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/freeabeliangroup-tofinsupp-comp-tofreeabeliangroup.md) | 66 | `result-track:46c3a0f1680a4c7b5f20de563c1fc0e4b6eb964fcd130dd18a1241a98713efcd` |
| 5 | `theorem` | [Finsupp.toFreeAbelianGroup_comp_toFinsupp](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/finsupp-tofreeabeliangroup-comp-tofinsupp.md) | 75 | `result-track:1570d28d131c0282554b1ebc72878226d45cb000ab478a839e8079ef2e470399` |
| 6 | `theorem` | [Finsupp.toFreeAbelianGroup_toFinsupp](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/finsupp-tofreeabeliangroup-tofinsupp.md) | 84 | `result-track:2a6ef56680ec6a61994e7b73f579e749145a9b8064b398b492796a46a08af01e` |
| 7 | `theorem` | [toFinsupp_of](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/tofinsupp-of.md) | 94 | `result-track:ae66779426264f10004ccecb276d45d6f3427e3de14ae64b14f059249d397b4c` |
| 8 | `theorem` | [toFinsupp_toFreeAbelianGroup](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/tofinsupp-tofreeabeliangroup.md) | 99 | `result-track:d0b54559e949e7928850f769bf3a2391ef4f6228dd7088e900b9901e58e50c52` |
| 9 | `def` | [equivFinsupp](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/equivfinsupp.md) | 108 | `declaration-track:087f832cf57387251ddd11826fddefa5dab3fa2969a6ca24a298e95b1126cf29` |
| 10 | `def` | [basis](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/basis.md) | 117 | `declaration-track:e47e8ea19fba664523c6d8ecba3c6c2ee0b823f5c41d1227604ade933a87a420` |
| 11 | `def` | [Equiv.ofFreeAbelianGroupLinearEquiv](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/equiv-offreeabeliangrouplinearequiv.md) | 122 | `declaration-track:d498a8a3caa07143102cf8a5d5d02b18feba8b4efdde6326d2c63de70b6c62fc` |
| 12 | `def` | [Equiv.ofFreeAbelianGroupEquiv](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/equiv-offreeabeliangroupequiv.md) | 129 | `declaration-track:8938ec670cbc370197c928302442e638083b5a54713ee64988efd5bd353db880` |
| 13 | `def` | [Equiv.ofFreeGroupEquiv](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/equiv-offreegroupequiv.md) | 135 | `declaration-track:fa98ba3400db8e4f7ee9c43b2d97317f789317ca6cf8a913b759bedcb2631c56` |
| 14 | `def` | [Equiv.ofIsFreeGroupEquiv](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/equiv-ofisfreegroupequiv.md) | 142 | `declaration-track:ec02577db507eaacee377bb5b05fa3562cdd16d5e2b8a971deafa4d2fa58da57` |
| 15 | `def` | [coeff](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/coeff.md) | 151 | `declaration-track:9645b637381e1aa138946553dc7cae4350c0c03d419f66813c076949bd33b7ed` |
| 16 | `def` | [support](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/support.md) | 157 | `declaration-track:cb2c8aebb4dcd88589b8cfe6e9d882340229508036658f3619c2519bb6250dfd` |
| 17 | `theorem` | [mem_support_iff](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/mem-support-iff.md) | 161 | `result-track:f662e21e211c87dd70b7236cb818a8ec3affcaf57d1f15ca3912fae9eb2eeb04` |
| 18 | `theorem` | [not_mem_support_iff](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/not-mem-support-iff.md) | 166 | `result-track:a8991c22d0ae8aa2971910b0a9b18d60ae4df333f840e97ec2cbafdbba427993` |
| 19 | `theorem` | [support_zero](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/support-zero.md) | 172 | `result-track:6dabde7719251d38f28db099369aca353d28c20ce9db7b928d6bacee0d66e844` |
| 20 | `theorem` | [support_of](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/support-of.md) | 177 | `result-track:16a2ffe149a370c32440321077f35b25280854d4df11f9a431ecd26998cce835` |
| 21 | `theorem` | [support_neg](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/support-neg.md) | 182 | `result-track:add3bae00c1da7cab7b4e93a90477054a56c39fedb6b8089a9115013f8e59709` |
| 22 | `theorem` | [support_zsmul](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/support-zsmul.md) | 187 | `result-track:b0bec5d1bd206dfe5478302bc9326c4e3dfafffeba0348902563a402cc28d08e` |
| 23 | `theorem` | [support_nsmul](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/support-nsmul.md) | 195 | `result-track:9c36debaf9b4ece416960541f8fb01bc2d9cac089306b2998a1e88a7822e7fa3` |
| 24 | `theorem` | [support_add](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupFinsuppNamespaced.lean/declarations/support-add.md) | 203 | `result-track:d909499655745100a375d0986805493d5bd6b04e498ae86f6593d529e0e0cc6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2c257fe975e689cb8d7082bb85cbd02baaedcab6f5ce38314ffc8c2ba67d9e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Variant10dc348ca9ea123fafc7a248a18f51b4ecd1792536f111565729172faae6788e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Variant10dc348ca9ea123fafc7a248a18f51b4ecd1792536f111565729172faae6788e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

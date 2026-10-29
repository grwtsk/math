# Verification target: Subsemigroup Center One Mem Center

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "810e556ea5d3e1607b6e94e10f60a870bcbcb709",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant2a105803ec625c98e78dc19b50d381265bb83933bddb08e05714fd3f0c03d386.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `810e556ea5d3e1607b6e94e10f60a870bcbcb709`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant2a105803ec625c98e78dc19b50d381265bb83933bddb08e05714fd3f0c03d386.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant2a105803ec625c98e78dc19b50d381265bb83933bddb08e05714fd3f0c03d386.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Operations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/center-source-edition-2.md) | 34 | `declaration-track:d839ac32b8bd7389685f0c88cd343cb60d76e7d2e10b2627015c300309678ec2` |
| 2 | `theorem` | [mem_center_iff](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/mem-center-iff-source-edition-2.md) | 41 | `result-track:df985766e2341d1d857fad24d8312dab7882e6f1d4f189c33d3b1cf5f3f77b2d` |
| 3 | `instance` | [decidableMemCenter](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/decidablememcenter-source-edition-2.md) | 46 | `declaration-track:d5566c100efa27f7848cf64ccd034ed1e6bc1fa7df3e3e2706c66702d9658d44` |
| 4 | `theorem` | [one_mem_center](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/one-mem-center.md) | 51 | `result-track:086e3445f961ee8d8e2fc0f1da26e6d893815232a21df7c9b249bb00d8d070e8` |
| 5 | `theorem` | [zero_mem_center](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/zero-mem-center.md) | 56 | `result-track:c544b15437d106dcb87c7956defc83ca6727874c5dfe2b5daa40bb3b988ec634` |
| 6 | `theorem` | [mul_mem_center](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/mul-mem-center.md) | 62 | `result-track:1bec8c58139fa8883e8839aa2ca65752a767e8b1ddd6ffccf7f2d4e5b05a6f83` |
| 7 | `theorem` | [inv_mem_center](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/inv-mem-center.md) | 68 | `result-track:0f4e2d7fe96f0a78d4c34b15896d9b40e36603fc89bf0d6524fc640338dc5af9` |
| 8 | `theorem` | [add_mem_center](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/add-mem-center.md) | 75 | `result-track:d78855fa40b02da885a46a9aec68bc825ea170dbc301ce117947c8a58619e86e` |
| 9 | `theorem` | [neg_mem_center](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/neg-mem-center.md) | 80 | `result-track:fc3b3263f073e0af119f52f54c32c2b89ab5ca64c0b76bfef34cb0abf7286f65` |
| 10 | `theorem` | [subset_center_units](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/subset-center-units.md) | 86 | `result-track:8018b278177dea26b423822993197715306687dd2fe0354c7e762699a1f6301f` |
| 11 | `theorem` | [center_units_subset](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/center-units-subset.md) | 91 | `result-track:50ab5a87a3cbcd118af7918138427580ff464bf2f62b1b7dd54f67880d091816` |
| 12 | `theorem` | [center_units_eq](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/center-units-eq.md) | 99 | `result-track:5ef7efa9a42691a7ab913236915a89a346a9a6972fd28fe78e2c2001249f68f3` |
| 13 | `theorem` | [inv_mem_center₀](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/inv-mem-center-source-edition-2.md) | 104 | `result-track:f3ca007eed8453af6492c99aca99a248b42317f684d4354306dce106eb761d81` |
| 14 | `theorem` | [div_mem_center](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/div-mem-center-source-edition-2.md) | 114 | `result-track:df5e2e6d448236f642316b80b7a6d77e1cba4fd7307b6fdecd4dd11b2870ed3d` |
| 15 | `theorem` | [div_mem_center₀](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/div-mem-center.md) | 122 | `result-track:d474845bb1822d07ab1b7b68b4e436bf81473cd4bf718f66d007941c9af6f848` |
| 16 | `theorem` | [center_eq_univ](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/center-eq-univ.md) | 131 | `result-track:3e84ffc2f0e3d57690a657454a96c6adda5dbb58e0beb221c58b8ec4e753ef61` |
| 17 | `def` | [center](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/center.md) | 147 | `declaration-track:40ca92ff1b48c09ff8374a6a7fa271d1f2d7ba723e810ca1644d8139e916fbbd` |
| 18 | `theorem` | [mem_center_iff](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/mem-center-iff.md) | 160 | `result-track:d471e628faebda10a8cc34f69c8ff943c6b65211e02b8eb9643a0268a94bed5a` |
| 19 | `instance` | [decidableMemCenter](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/decidablememcenter.md) | 166 | `declaration-track:47e032410abc341244f5488280f12f8383e19b867f856683ae8398cc9b5eaebd` |
| 20 | `instance` | [center.commSemigroup](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/center-commsemigroup.md) | 173 | `declaration-track:74f5adcab3367156f4b0cab3d32a0d4233d1da37b4a86e4b11fd9df489976be7` |
| 21 | `theorem` | [center_eq_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupCenterOneMemCenter.lean/declarations/center-eq-top.md) | 185 | `result-track:02f07d5bbf1875b9c5c8c21f567aa740fbb7a61802590ca15db48ee77c610106` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7d49061a4af87b49de5dd61e3935ff15b14958b40cf289220c0f2969259693d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Center/Variant2a105803ec625c98e78dc19b50d381265bb83933bddb08e05714fd3f0c03d386.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Center/Variant2a105803ec625c98e78dc19b50d381265bb83933bddb08e05714fd3f0c03d386.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

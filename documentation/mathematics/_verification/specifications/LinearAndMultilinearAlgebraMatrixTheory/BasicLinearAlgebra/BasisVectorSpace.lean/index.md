# Verification target: Basis Vector Space

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d643e8dc8410785e215ca884958d8457e39c1a8",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantd2852fe11722eeb84bb48d3824d1cf4091522776638f8cfceaf33b7d89b50a1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d643e8dc8410785e215ca884958d8457e39c1a8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantd2852fe11722eeb84bb48d3824d1cf4091522776638f8cfceaf33b7d89b50a1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/VectorSpace/Variantd2852fe11722eeb84bb48d3824d1cf4091522776638f8cfceaf33b7d89b50a1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/extend.md) | 51 | `declaration-track:27a525e8692ef530abb9258edb83144c5beaff75d748a20edbd987dcfc195d4f` |
| 2 | `theorem` | [extend_apply_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/extend-apply-self.md) | 58 | `result-track:09a761acb80cc81c50d2095e68951a33be585567d3373d0c006b6aee15a5fab8` |
| 3 | `theorem` | [coe_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/coe-extend.md) | 64 | `result-track:db2bd2d49b81c31fb34e7f1b2cbe8efa8c576a82ea58d48e029aa2e1df8ae094` |
| 4 | `theorem` | [range_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/range-extend.md) | 68 | `result-track:4d648b045ecd7bdc8ac8417c27359698379cf5809ab55a6a01d8408ebe539fa9` |
| 5 | `def` | [sumExtendIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/sumextendindex.md) | 78 | `declaration-track:a30bb2ebf2562195f5753c7785bac0d43ea7018b81a857a8cfc16500f1511f57` |
| 6 | `def` | [sumExtend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/sumextend.md) | 82 | `declaration-track:72aea0fd9f256f6925a1e1000c71425b508e541942fe26037e78e11e7c1f95ba` |
| 7 | `theorem` | [subset_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/subset-extend.md) | 95 | `result-track:c7e27464a178ca07341d3f5e1193f139adee5eac50e934a714e02163fe2bd65c` |
| 8 | `def` | [ofVectorSpaceIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/ofvectorspaceindex.md) | 105 | `declaration-track:e6413aa0f731f413ada0da93faae1ee9254217e277f6ee29c6dca9c5c98cb99e` |
| 9 | `def` | [ofVectorSpace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/ofvectorspace.md) | 110 | `declaration-track:b69ebed5acdf9539e0f722f033cc3153ea2095382c4bdac34bb875c5e3328e15` |
| 10 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/instance.md) | 114 | `declaration-track:80ba683f69eab7f5b9dd426f20fc79faeff79a774b663200c62bfab6e9199d5c` |
| 11 | `theorem` | [ofVectorSpace_apply_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/ofvectorspace-apply-self.md) | 118 | `result-track:880c45c8287138feff1317e5b837838e0a8219079fc9de9227de0986ddd51b89` |
| 12 | `theorem` | [coe_ofVectorSpace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/coe-ofvectorspace.md) | 124 | `result-track:7ec2f5af1b49e82796ed5abd9780797f5ea60a34e80cb469f8f5ea07d970c9cc` |
| 13 | `theorem` | [ofVectorSpaceIndex.linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/ofvectorspaceindex-linearindependent.md) | 128 | `result-track:8c7050ac6480c39e3929efd48311e73738a42d15370354c9a3f20e75fb758119` |
| 14 | `theorem` | [range_ofVectorSpace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/range-ofvectorspace.md) | 135 | `result-track:9dbf6d0c5ab2d7b6b2df074dfcd9ae787eb30140efd0c0b4ba2ebd3abeb349d4` |
| 15 | `theorem` | [exists_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/exists-basis.md) | 139 | `result-track:49cce3921952d8977b2b04929d9c9ce20d7919e7a03d2e5cf378fba551bbb643` |
| 16 | `theorem` | [VectorSpace.card_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/vectorspace-card-fintype.md) | 153 | `result-track:e5a2affb0f3a1322291a95e163e6e7975cdb3599352b41437c98ac0df8a58877` |
| 17 | `theorem` | [nonzero_span_atom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/nonzero-span-atom.md) | 164 | `result-track:6c4cecbd17a320f7ae53008b30d1cc46fd2f943c371bf010b3326475a18785b9` |
| 18 | `theorem` | [atom_iff_nonzero_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/atom-iff-nonzero-span.md) | 182 | `result-track:cef3df5fe1fc32274639bb2d824917e7f993c74912ace13cea09b0ba10e8f6e8` |
| 19 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/instance-source-edition-2.md) | 197 | `declaration-track:c71ddc1f217331f1fae5bf7f4b825523616949fb287a3cd77daae68ec9163817` |
| 20 | `theorem` | [LinearMap.exists_leftInverse_of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/linearmap-exists-leftinverse-of-injective.md) | 207 | `result-track:55150257f0f9cb0b2dce842b801900f98f7819c349761888d33c79cc08c7fb3d` |
| 21 | `theorem` | [Submodule.exists_isCompl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/submodule-exists-iscompl.md) | 230 | `result-track:352d8900503bfe8014693be0cbf0ac01e792bf9d43aa083b21ab4cfeb301677e` |
| 22 | `instance` | [Module.Submodule.complementedLattice](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/module-submodule-complementedlattice.md) | 235 | `declaration-track:15b85d656047daab72c0bb9b804582c8a440d5f49a4ae6af8e1d112be894a093` |
| 23 | `theorem` | [LinearMap.exists_rightInverse_of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/linearmap-exists-rightinverse-of-surjective.md) | 239 | `result-track:a8ab4dcb0287d7659ceb4f2348dc0d99d77aa2e6adb5c5a3222b08d78fc424ac` |
| 24 | `theorem` | [LinearMap.exists_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/linearmap-exists-extend.md) | 251 | `result-track:df687077915d8395d77da33d16eea2ed442023de56f0c4a6eee4aeb685bcdf1d` |
| 25 | `theorem` | [Submodule.exists_le_ker_of_lt_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/submodule-exists-le-ker-of-lt-top.md) | 261 | `result-track:9f437d1aa1e461a8d1b5543f9f2469ba94d19770a17f0f64222f5f5550e825e8` |
| 26 | `theorem` | [quotient_prod_linearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisVectorSpace.lean/declarations/quotient-prod-linearequiv.md) | 275 | `result-track:bc7a8a2dfad26b4d6b54ca60aecfd6589ad3c290dae68fcb76237418f6393f34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35b3e3686b1057828cace55071daa900b5e0e1e3cb1c14fcb3be997c5d001b76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantd2852fe11722eeb84bb48d3824d1cf4091522776638f8cfceaf33b7d89b50a1e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/VectorSpace/Variantd2852fe11722eeb84bb48d3824d1cf4091522776638f8cfceaf33b7d89b50a1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Morphisms Quasi Separated Quasi Compact Affine Property Iff Quasi Separated Space

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c18674bc7337b530e1dfb645a2ccbf9fe508fe34",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Varianta0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c18674bc7337b530e1dfb645a2ccbf9fe508fe34`.

Source path: `GRWTSK/Topology/GeneralTopology/QuasiSeparated/Varianta0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/QuasiSeparated/Varianta0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Constructors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.QuasiCompact` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Equalizer` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.QuasiSeparated` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.CommRingCat` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/quasiseparated.md) | 47 | `declaration-track:211e099bbef28e3ba1e42c4e019881b47c7509cdbdc79096503b2253f186d512` |
| 2 | `theorem` | [quasiSeparatedSpace_iff_affine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/quasiseparatedspace-iff-affine.md) | 51 | `result-track:0025306bb1ed87e10a11b55ce97c52688424b3c28c1efef506e72eefc084535a` |
| 3 | `theorem` | [quasiCompact_affineProperty_iff_quasiSeparatedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/quasicompact-affineproperty-iff-quasiseparatedspace.md) | 77 | `result-track:911141cafa19fb8c30f78f48f1680e125f0345cf1798531a5a54ab78989da2f7` |
| 4 | `theorem` | [quasiSeparated_eq_diagonal_is_quasiCompact](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/quasiseparated-eq-diagonal-is-quasicompact.md) | 106 | `result-track:20b6934969032fe097e8a55f6821d8fb89763098fd906f68a7de5a8393f76f7c` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/instance-source-edition-5.md) | 109 | `declaration-track:318fc8edf0fcaefe3bf8afca697379840405fe1356504f070effdb7cce6211ab` |
| 6 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/instance-source-edition-2.md) | 114 | `declaration-track:203fce1096ead3e82030571acc89525e794a544b0671e8412e1e4a23149bd0b4` |
| 7 | `instance` | [quasiSeparated_isStableUnderComposition](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/quasiseparated-isstableundercomposition.md) | 117 | `declaration-track:27d5c1e9ce5b27b88079af08825720fa040453a620e6bd5797d4172ff32b7687` |
| 8 | `instance` | [quasiSeparated_isStableUnderBaseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/quasiseparated-isstableunderbasechange.md) | 121 | `declaration-track:2016dcfda7a392c76f0eec21030ddae714184e28e582a62c4a75227ec2d0edb6` |
| 9 | `instance` | [quasiSeparatedComp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/quasiseparatedcomp.md) | 125 | `declaration-track:340bd3f075dae4ffb0d1c84c9882c13326b55fb7b18a662b0b010d5e4d94ffb3` |
| 10 | `theorem` | [quasiSeparated_over_affine_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/quasiseparated-over-affine-iff.md) | 129 | `result-track:4f0b474cf218554b08ede2d22e2df9fd228260246f428e2929fc946ce54a3880` |
| 11 | `theorem` | [quasiSeparatedSpace_iff_quasiSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/quasiseparatedspace-iff-quasiseparated.md) | 133 | `result-track:8b0f93fbb330f8f9783871d454ae75f40bf38e9ae8d0afbf03e77f0f9b3e73d2` |
| 12 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/instance-source-edition-7.md) | 137 | `declaration-track:3e93b675055a60ab6dc86d60b232f4788e6f2857fd2e0439041a4ceb3934259f` |
| 13 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/instance-source-edition-6.md) | 141 | `declaration-track:3d7e55eab43e95cffab197adfbd41f559ed81f29a9f20e9de7cac7e8b99d2fe7` |
| 14 | `theorem` | [quasiSeparatedSpace_of_quasiSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/quasiseparatedspace-of-quasiseparated.md) | 145 | `result-track:d4398a31788f7ef66f307ab82c82d4229c25bff4efc4fc5b9437c975e9c38683` |
| 15 | `instance` | [quasiSeparatedSpace_of_isAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/quasiseparatedspace-of-isaffine.md) | 151 | `declaration-track:ebef44f85983cd7a31ecfdebb0cf93e99399eb08989ad3464b49dcee0ae346c7` |
| 16 | `theorem` | [IsAffineOpen.isQuasiSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/isaffineopen-isquasiseparated.md) | 154 | `result-track:4d2120cde1ef30235be7d9ffdfce6bb85ce498f185b0cd6f4932fd94d0065000` |
| 17 | `lemma` | [quasiSeparatedSpace_iff_quasiCompact_prod_lift](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/quasiseparatedspace-iff-quasicompact-prod-lift.md) | 159 | `result-track:33af061b1edd165946e24e12ee99501862c3e3eb840f6b10567d1c33dc83037d` |
| 18 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/instance.md) | 167 | `declaration-track:1a362aee7699f7def79d542835562d709246d13a54040838542afb823b511a8c` |
| 19 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/instance-source-edition-4.md) | 170 | `declaration-track:2af77bdb9523756365ff0e07c216fc9ff227cdd74094bb36514c5ad376532279` |
| 20 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/instance-source-edition-3.md) | 174 | `declaration-track:21b32edb6af83e877e55b9a84d315ab02ba703e7b87bd87adf832f29e023922a` |
| 21 | `theorem` | [QuasiSeparated.of_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/quasiseparated-of-comp.md) | 179 | `result-track:185398a354ec467a16ad5f5e1b586156b64ccc33bc3d745ad6cbb88c1e036df1` |
| 22 | `theorem` | [exists_eq_pow_mul_of_isAffineOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/exists-eq-pow-mul-of-isaffineopen.md) | 192 | `result-track:e79724ec00f1e1ef806c297c97a236f2f704d7b88b8953bff3f777f8f0cd4393` |
| 23 | `theorem` | [exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux_aux](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/exists-eq-pow-mul-of-is-compact-of-quasi-separated-space-aux-aux.md) | 200 | `result-track:55a9a2ce584c9f0f550a1edc8f97b55a132f86eed1296adf3c56cb32b867a13d` |
| 24 | `theorem` | [exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/exists-eq-pow-mul-of-is-compact-of-quasi-separated-space-aux.md) | 215 | `result-track:c3375cc72ce7657db6a853bc1edbbc5ea788a4f35380d300cbb8e5db6a84b5a7` |
| 25 | `theorem` | [exists_eq_pow_mul_of_isCompact_of_isQuasiSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/exists-eq-pow-mul-of-iscompact-of-isquasiseparated.md) | 245 | `result-track:9a87e91ce3b1721daa630e4d43e91d4e52f37f283592761f4da19964bc5e4a95` |
| 26 | `theorem` | [isLocalization_basicOpen_of_qcqs](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/islocalization-basicopen-of-qcqs.md) | 330 | `result-track:43fe51d2262736abb3902d9bfbceb25e087515bb6a75c9f0beeae525bf640df2` |
| 27 | `lemma` | [exists_of_res_eq_of_qcqs](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/exists-of-res-eq-of-qcqs.md) | 353 | `result-track:310be57351f5670500f28e52c9a54211208a367c7f9edfd1cab688ae30984446` |
| 28 | `lemma` | [exists_of_res_eq_of_qcqs_of_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/exists-of-res-eq-of-qcqs-of-top.md) | 360 | `result-track:f14c16bdefc4f59c03698a217fc02e5163292835ff2b98a17a80a2e33a97811a` |
| 29 | `lemma` | [exists_of_res_zero_of_qcqs](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/exists-of-res-zero-of-qcqs.md) | 365 | `result-track:b78c922d938159adc97e80686574185856616133cfb71a21469669cf4039022b` |
| 30 | `lemma` | [exists_of_res_zero_of_qcqs_of_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/exists-of-res-zero-of-qcqs-of-top.md) | 374 | `result-track:c93604c3534abf96aa791679fe5754d73c372d80b390369b512f8d8937a6426b` |
| 31 | `theorem` | [isIso_ΓSpec_adjunction_unit_app_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiSeparatedQuasiCompactAffinePropertyIffQuasiSeparatedSpace.lean/declarations/isiso-spec-adjunction-unit-app-basicopen.md) | 381 | `result-track:010ab5e8e2790b5ccfe66ded605540c4934867b548d671a4d678cbfb8a2352e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8e80050da2f87a86bed918406cebf9570c0a9e642116ae78eed508581a0d252 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/QuasiSeparated/Varianta0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/QuasiSeparated/Varianta0e38f92d76cfca319ea789400126e25dae46c3186b452782ac09cd4bda624c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

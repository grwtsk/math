# Verification target: Bimon Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8612de65224a28464ffb0164c78846c738aa907d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variant4e418b59f36c0c4f76a33ed177622f8f12360098d7a03d250d4e4ecbebdff05f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8612de65224a28464ffb0164c78846c738aa907d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variant4e418b59f36c0c4f76a33ed177622f8f12360098d7a03d250d4e4ecbebdff05f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variant4e418b59f36c0c4f76a33ed177622f8f12360098d7a03d250d4e4ecbebdff05f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Comon_` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bimon_Class](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/bimon-class.md) | 48 | `declaration-track:9092aebc08047ac61002a2f3c21e800e80e6cb1801002b8bd762896de7ef6ba5` |
| 2 | `theorem` | [mul_comul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/mul-comul.md) | 64 | `result-track:b42aacc43594c794dd468d4147016ea88b2049ca43158e4ba205add26f142523` |
| 3 | `theorem` | [one_comul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/one-comul-source-edition-2.md) | 69 | `result-track:e1bebecb4050ccbdd6ed924cc40246db44bdad5b7456fae9e1e1b09f498ac86a` |
| 4 | `theorem` | [mul_counit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/mul-counit.md) | 72 | `result-track:16858fc73f4b02687d4510ae1016f83bbadf20d859cb76a073d5c3f172232177` |
| 5 | `theorem` | [one_counit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/one-counit.md) | 75 | `result-track:0655ed5474837f0f8766d8f9b271be25019ff44f75db930cbac36dc37f96badb` |
| 6 | `class` | [IsBimon_Hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/isbimon-hom.md) | 80 | `declaration-track:5ca106de843491c5aa18a6cd2874f0e6a60062087e8c9a939081ddc9fed32e23` |
| 7 | `def` | [Bimon_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/bimon.md) | 89 | `declaration-track:013deee75a0944c36e6d6756b12891036bca03308b51822dcd13fbb069552afb` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/instance.md) | 93 | `declaration-track:4ea78c26df9b41cbc23fedb778d61d2bd53d103b8db52b9c22d52785336233c3` |
| 9 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/ext.md) | 95 | `result-track:42d48758b8b20c09509d30d35c91d56407453aa9064b2b68cd0fc059cff1fd0d` |
| 10 | `theorem` | [id_hom'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/id-hom.md) | 98 | `result-track:3c7356353e08505717757f3452c94a39b1f25e5ffd6aa07dfe94934e33f5d5bd` |
| 11 | `theorem` | [comp_hom'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/comp-hom.md) | 101 | `result-track:3d42756cb84416ea3526d750a2b3ad3ce9341430f28e628e28987a7b1ee40b7c` |
| 12 | `abbrev` | [toMon_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/tomon.md) | 105 | `declaration-track:b9a6ba861f32adaf7a420debd96bb30a518476c8369aaaff03c9509e8cfd4b14` |
| 13 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/forget.md) | 108 | `declaration-track:db9d649aa63bafb454ffabe0a39a902e2343f982e2b2c1f8869baeed75a14b03` |
| 14 | `theorem` | [toMon_forget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/tomon-forget.md) | 111 | `result-track:daef9506d63939b2a403c48d5d0b6c846e864f1917f429682e7b5ce67527f78f` |
| 15 | `def` | [toComon_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/tocomon.md) | 115 | `declaration-track:0914ce1927aac048c6fd5e00e5bb0e64c91c73547bbf761525c5c295b6f050d6` |
| 16 | `theorem` | [toComon_forget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/tocomon-forget.md) | 118 | `result-track:f48c2e0d2a5b0a816cc823118b1482d98cc90fbae8fc4d00bf3bc2a726c35649` |
| 17 | `def` | [toMon_Comon_obj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/tomon-comon-obj.md) | 121 | `declaration-track:bddc4dd4eb7d2bbf5a369149e63c2202e97dd14f8c5916dc90503742dace4589` |
| 18 | `def` | [toMon_Comon_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/tomon-comon.md) | 132 | `declaration-track:3960ae832dea2b01eb9b77408b9cd6ed8505488df987a905d2c0fe729c166e86` |
| 19 | `def` | [ofMon_Comon_obj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/ofmon-comon-obj.md) | 139 | `declaration-track:ea1276b1470a36d893a2f06fd7bd7b6ce75c91bfefc8264199de67354fd1f2de` |
| 20 | `def` | [ofMon_Comon_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/ofmon-comon.md) | 148 | `declaration-track:615491005e6e2317dd58066a7dccd9b454b4c69356130ecdc0991782c632d23b` |
| 21 | `def` | [equivMon_Comon_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/equivmon-comon.md) | 154 | `declaration-track:8c856661a0857707c3959bcf4300102f2191e41656669e724a582afeaca2eabb` |
| 22 | `def` | [trivial](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/trivial.md) | 164 | `declaration-track:12d79095d847770d03a4610e751e411b550609ac242ae950443f8aeec0977dd6` |
| 23 | `def` | [trivialTo](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/trivialto.md) | 168 | `declaration-track:39ff7be8890ac59cef962a121d2a564b6a5d469127d645136c080846903ffaca` |
| 24 | `def` | [toTrivial](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/totrivial.md) | 176 | `declaration-track:86b0e66eeb40dde0530ab8e95bec24f90eea52192129b743be684ea8abc46dd6` |
| 25 | `theorem` | [one_comul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/one-comul.md) | 187 | `result-track:56a677aeb9b67a9615c24c98bcfd0d3a7960698873defe3847393bcd04bb13f1` |
| 26 | `theorem` | [mul_counit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/mul-counit-source-edition-2.md) | 192 | `result-track:9b7cdab9080748c4dbc5d48d1182793576b57433b0a7daa8d5f23f3d4c930fe3` |
| 27 | `theorem` | [compatibility](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/compatibility.md) | 197 | `result-track:144fdcaaa31b23e50e340258d7c854f831aea581e963cf32c83ca909cbbee4ca` |
| 28 | `theorem` | [comul_counit_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/comul-counit-hom.md) | 207 | `result-track:64db93ebbf75e7cc078eb2790202502c717c029a88a08a7fa1dd3dc84553db89` |
| 29 | `theorem` | [counit_comul_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/counit-comul-hom.md) | 211 | `result-track:c12ddf990a222db69eb747069e3c43fc02147b200cd9721f56f6cdbcd7ebfeb3` |
| 30 | `theorem` | [comul_assoc_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/comul-assoc-hom.md) | 215 | `result-track:eb9414a1231ec743415f38e98e25008ea9b695d70a80a708b53d9deb48fcf28c` |
| 31 | `theorem` | [comul_assoc_flip_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/comul-assoc-flip-hom.md) | 220 | `result-track:367195e0df1534fde832f3e55825aab876f7b0eb33aa0dae184a8e80b1745653` |
| 32 | `theorem` | [hom_comul_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/hom-comul-hom.md) | 225 | `result-track:c6f5b0af1c828148503733f832702456133dc1c0382df086446848cc86d2f0b4` |
| 33 | `theorem` | [hom_counit_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/BimonNamespaced.lean/declarations/hom-counit-hom.md) | 229 | `result-track:640af44f4adad71cfdd5fb7d71c1cf387bbdd8eb2538089f0b981b406108b008` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92937daf7756979c58b63d5c46a5325344a7742afb90a99d09e2c555c1890fc9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variant4e418b59f36c0c4f76a33ed177622f8f12360098d7a03d250d4e4ecbebdff05f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Variant4e418b59f36c0c4f76a33ed177622f8f12360098d7a03d250d4e4ecbebdff05f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

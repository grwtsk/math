# Verification target: Finiteness Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd5063a179fdcef2d1ca92de8e55978fba36cbb2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant3b45ec3ffa1176ac08c8b32b2ad5d8a5ada2de5f83108a4ddaa7ab1fbb2a2350.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd5063a179fdcef2d1ca92de8e55978fba36cbb2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant3b45ec3ffa1176ac08c8b32b2ad5d8a5ada2de5f83108a4ddaa7ab1fbb2a2350.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant3b45ec3ffa1176ac08c8b32b2ad5d8a5ada2de5f83108a4ddaa7ab1fbb2a2350.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FG](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/fg.md) | 50 | `declaration-track:430a0344bd8beba1beb8f004f6e2b863becbba7dc2f4a4977d6e34d198736c08` |
| 2 | `theorem` | [fg_def](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/fg-def.md) | 53 | `result-track:d92b6b95cc10872b38b4b4a006d2176e9cd77d2f7fc93cc2c8cc97b591d6220c` |
| 3 | `theorem` | [fg_iff_addSubmonoid_fg](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/fg-iff-addsubmonoid-fg.md) | 59 | `result-track:9ec04628e638cdf1f8695c3c23c9203127a0dbe46c8d1ec61012d33859d38dcf` |
| 4 | `theorem` | [fg_iff_addSubgroup_fg](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/fg-iff-addsubgroup-fg.md) | 63 | `result-track:1a50c9f064ab72b0f47d183fbbc5ec29e0b1a67279113ddf148b8006bebecbf4` |
| 5 | `theorem` | [fg_iff_exists_fin_generating_family](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/fg-iff-exists-fin-generating-family.md) | 68 | `result-track:f4bd104ac76ef4b7ba999a09895b332f4119d99931f102c347444f86b37138ff` |
| 6 | `lemma` | [fg_iff_exists_finite_generating_family](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/fg-iff-exists-finite-generating-family.md) | 79 | `result-track:f510058c8e5f221a11177d3f2452babebd1740a887fb32c4a6c40c2b92fd9c71` |
| 7 | `theorem` | [fg_span_iff_fg_span_finset_subset](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/fg-span-iff-fg-span-finset-subset.md) | 93 | `result-track:359685c099dc26364fd962ac0902ec8a8da28da4feb0eed2adf5bfa35c5407fb` |
| 8 | `def` | [FG](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/fg-source-edition-2.md) | 115 | `declaration-track:9cfc19a44ad574c78efddbcfdd5a8b6cc5bc37fce2d7948e42f57d441bac1f48` |
| 9 | `class` | [Module.Finite](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/module-finite.md) | 125 | `declaration-track:b1ed7c08ef18ec60452b57e92ccb0b028a326e37d555a226dacc983998ab8a60` |
| 10 | `theorem` | [finite_def](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/finite-def.md) | 136 | `result-track:de59d34b6f261358fee4a52f731bdbbbeb8f0904d328ac7a65a486a7fc76fd4c` |
| 11 | `theorem` | [iff_addMonoid_fg](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/iff-addmonoid-fg.md) | 144 | `result-track:67bded30aa203bb75e56f90b9546a6bc3ce504af886b73ad8b307ea4115117e5` |
| 12 | `theorem` | [iff_addGroup_fg](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/iff-addgroup-fg.md) | 148 | `result-track:caeb0b635ff2738b18d0e19cee39aa0b7ceb25531d1113842fe17532d76a71a5` |
| 13 | `lemma` | [exists_fin](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/exists-fin.md) | 155 | `result-track:4d49af2483e1cf42b9432c7f0e8f0937e1baf83762638f32711d8322448b3ffd` |
| 14 | `instance` | [AddMonoid.FG.to_moduleFinite_nat](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/addmonoid-fg-to-modulefinite-nat.md) | 162 | `declaration-track:ba1ac75575b976ab7ad28760051c118554d2ecf97f85b7e33fd699ec336102b7` |
| 15 | `instance` | [AddMonoid.FG.to_moduleFinite_int](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/addmonoid-fg-to-modulefinite-int.md) | 166 | `declaration-track:bf9582697e2c306ceaa29d0a269e59578ffe78d345a300b80e22e80253d486db` |
| 16 | `def` | [Finite](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/finite-source-edition-2.md) | 178 | `declaration-track:75d575728a690437aba1b56987b23fb4c08f417c404ee4bd8d455e25565d8238` |
| 17 | `lemma` | [finite_algebraMap](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/finite-algebramap.md) | 183 | `result-track:e4ebe176ee878c1de3ad3343c528c410af5b5c834351d937407c0d766c3ce1ca` |
| 18 | `def` | [Finite](../../../../CommutativeAlgebra/FinitenessDefsNamespacedPublic.lean/declarations/finite.md) | 197 | `declaration-track:46b3ca82f627633ee688c3854a8e962323b2a61d4cb40028d4245f44a2494256` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b61de7da59a053ee101cf599f41ecbd9484470c87e288b1233342a301c9e99f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant3b45ec3ffa1176ac08c8b32b2ad5d8a5ada2de5f83108a4ddaa7ab1fbb2a2350.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant3b45ec3ffa1176ac08c8b32b2ad5d8a5ada2de5f83108a4ddaa7ab1fbb2a2350.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

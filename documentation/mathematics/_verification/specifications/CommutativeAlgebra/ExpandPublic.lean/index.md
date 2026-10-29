# Verification target: Expand Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81b286ae57f3aef75aff7b7cec86d0bd2ed37e32",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Expand/Variant841ced8e348214d5a83f6af7c19b6c0f342c6e15f4da7ccdba0da94084e27b61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ExpandPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ExpandPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81b286ae57f3aef75aff7b7cec86d0bd2ed37e32`.

Source path: `GRWTSK/Algebra/Expand/Variant841ced8e348214d5a83f6af7c19b6c0f342c6e15f4da7ccdba0da94084e27b61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Expand/Variant841ced8e348214d5a83f6af7c19b6c0f342c6e15f4da7ccdba0da94084e27b61.lean.json)

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
| 1 | `def` | [expand](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/expand.md) | 33 | `declaration-track:224a562a9e1f9b2abd2068b8c25c4bf56a98d9dcdd18759320f952e39845d927` |
| 2 | `theorem` | [expand_apply](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/expand-apply.md) | 36 | `result-track:81e59d14beddac291676c16101dfdec13594959e3730f23806372d184429c1b1` |
| 3 | `theorem` | [expand_C](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/expand-c.md) | 39 | `result-track:f05c2f351ce894df5d9fd658eb18a4901dc08997adad2ff3888394d942d82a7a` |
| 4 | `theorem` | [expand_mul_eq_comp](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/expand-mul-eq-comp.md) | 43 | `result-track:e7a971228b52c63ebb817c7cc2d1e19a8992636339256144875b53c3f61c183d` |
| 5 | `theorem` | [expand_mul](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/expand-mul.md) | 48 | `result-track:fb2b72d96146d84f987fbe238325815b4b614867795b7a7db26d2bb66e7268be` |
| 6 | `theorem` | [expand_smul](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/expand-smul.md) | 52 | `result-track:c3d96afbc0fc8e61854ee6eb2b5e514c625f40bacf2be9ff2a8487717e389a90` |
| 7 | `theorem` | [expand_X](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/expand-x.md) | 56 | `result-track:bc509c42cef96779baeb072cf8dc9a184a29266362ab92d1a1d20fd618e033db` |
| 8 | `theorem` | [expand_monomial](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/expand-monomial.md) | 60 | `result-track:ad4059d62a3bc5b35cc882cbd17fd9c8d1bfc908dc7427fea779a43fe58fbc93` |
| 9 | `theorem` | [expand_one](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/expand-one.md) | 65 | `result-track:ce3c636e78a50c4a2348b70bbaa0d151ca6bc91108345fc219af85f3418946a0` |
| 10 | `theorem` | [expand_one_apply](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/expand-one-apply.md) | 68 | `result-track:c47886e32a6188366f351800f20f69e9203acf80dae93a4eace9cb80d09081b9` |
| 11 | `theorem` | [map_expand](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/map-expand.md) | 71 | `result-track:74432d15f20400187665708d29e0730c27f0adf01890cc4ed62b5f2a13dc5b79` |
| 12 | `theorem` | [expand_subst](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/expand-subst.md) | 75 | `result-track:89fd4695501ca81540d0e4150a29dffbfaa24e0b3925be9df1846455c50802f4` |
| 13 | `theorem` | [coeff_expand_mul](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/coeff-expand-mul.md) | 87 | `result-track:b7dddbe0d42f90958bc0758759e36734247f28fdd3b62ed8eea194ee0e27f602` |
| 14 | `theorem` | [constantCoeff_expand](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/constantcoeff-expand.md) | 92 | `result-track:07df24ce7e3e6369d4a1aa27af5610644c330e5c505f6361adcd3b813846efc2` |
| 15 | `theorem` | [coeff_expand_of_not_dvd](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/coeff-expand-of-not-dvd.md) | 97 | `result-track:70efceb189d6944ef356027fed09db20d046e7e5eb0be608e5885014f52bae6f` |
| 16 | `theorem` | [support_expand_subset](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/support-expand-subset.md) | 102 | `result-track:34c37e06cf444558421549f92af11c69782ed7e6fe7adc45c3b55e4785f7f7a0` |
| 17 | `theorem` | [support_expand](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/support-expand.md) | 106 | `result-track:64f1e06f179e20a11f4edbf2b98a77c74746149f1ae7643b538edf24684a5157` |
| 18 | `theorem` | [coeff_expand](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/coeff-expand.md) | 110 | `result-track:e6d451686042cf85fd56efd095b0b4cb6762fdd6c9ecb9cdd5b97c9c7a591126` |
| 19 | `theorem` | [order_expand](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/order-expand.md) | 118 | `result-track:99889b094249d6ecb82734faeca31d478ccfb7e12e3ae6cbb995e60994c3816f` |
| 20 | `theorem` | [map_frobenius_expand](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/map-frobenius-expand.md) | 125 | `result-track:1825c2811719abeb06f203f913b8c03a232edeb2e94982563af4499ec69b2474` |
| 21 | `theorem` | [map_iterateFrobenius_expand](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/map-iteratefrobenius-expand.md) | 129 | `result-track:cbd4c186daaf748daafa2638ccae401b571c9aca3b37eadff8320604a2e509bc` |
| 22 | `theorem` | [_root_.FiniteField.PowerSeries.expand_card](../../../../CommutativeAlgebra/ExpandPublic.lean/declarations/root-finitefield-powerseries-expand-card.md) | 133 | `result-track:9fdc7f83f5e7d6fab28993e4dd9b6ec7c947fc5fddec3f5f218d324a076f7d77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3cdfe333139634135d51b0575f8a33da48ac6568f98f3be9faeac680b9108c57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Expand/Variant841ced8e348214d5a83f6af7c19b6c0f342c6e15f4da7ccdba0da94084e27b61.lean","GRWTSK/_verification/specifications/Algebra/Expand/Variant841ced8e348214d5a83f6af7c19b6c0f342c6e15f4da7ccdba0da94084e27b61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

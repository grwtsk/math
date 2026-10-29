# Verification target: Lex Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c4d36ff1eb43b85cb94574a2cb36757533838e6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Lex/Variant4cd7f58f0bca0f326fb0f65b56f74f78f8f888e6f276ef25d724ad62290e68cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c4d36ff1eb43b85cb94574a2cb36757533838e6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Lex/Variant4cd7f58f0bca0f326fb0f65b56f74f78f8f888e6f276ef25d724ad62290e68cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Lex/Variant4cd7f58f0bca0f326fb0f65b56f74f78f8f888e6f276ef25d724ad62290e68cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [inl_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/declarations/inl-mono.md) | 37 | `result-track:035a5a064aca0dd7e877ca351d44324677b6e16d6e231936ac24ebaed1a4600c` |
| 2 | `lemma` | [inl_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/declarations/inl-strictmono.md) | 45 | `result-track:0fac1e66b743cd5201bd46c34a7ffefe1a8069ea54ffe5aef27a657df5d16738` |
| 3 | `lemma` | [inr_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/declarations/inr-mono.md) | 49 | `result-track:d904e08e1662e917a8502a2d9cf62541a1e071cc8d54d7753d842f7e995f3e75` |
| 4 | `lemma` | [inr_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/declarations/inr-strictmono.md) | 57 | `result-track:bc745b3ba7bd32f87c6e1aa589e0c595515d5ce5fc55092ca54a966088d09703` |
| 5 | `lemma` | [fst_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/declarations/fst-mono.md) | 61 | `result-track:97b6f9a9bea1a211b129003c21404809033bc601f7e9de7ff94a33fa871b69db` |
| 6 | `lemma` | [snd_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/declarations/snd-mono.md) | 67 | `result-track:8b22d0c7f88535f3832479de564d2d167f44fa3ad95315f9dccc6c2bb97bbc8a` |
| 7 | `def` | [inl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/declarations/inl.md) | 87 | `declaration-track:0cfca9b1abda10974ead8ed6c34071ea0765a7c54ab1847eb2406dcf78e9ba77` |
| 8 | `def` | [inr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/declarations/inr.md) | 98 | `declaration-track:6d840a63c081e034b14665d7ce4e0346738e480405fea45c3f900afb88e22b05` |
| 9 | `def` | [fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/declarations/fst.md) | 106 | `declaration-track:926b8c78dc19b1d2997caca9e56147b19b9f8443e7fdb695d3c62caa11e9060e` |
| 10 | `theorem` | [fst_comp_inl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/declarations/fst-comp-inl.md) | 120 | `result-track:3d45fbbc803ed65f1bdb0cc39a870576ee44d1b179420fb130b441a47fdfcde8` |
| 11 | `lemma` | [inl_eq_coe_inlₗ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/declarations/inl-eq-coe-inl.md) | 128 | `result-track:71bc4231843fcf090cab4d7fc08835d7ab7f6c4a7e8e23e529fcb481f52cb9df` |
| 12 | `lemma` | [inr_eq_coe_inrₗ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/declarations/inr-eq-coe-inr.md) | 134 | `result-track:9b74991c54fcc3e466cc1bc44382c5759f3439030cb814f8bcb64598be267f8f` |
| 13 | `theorem` | [inl_mul_inr_eq_coe_toLex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/LexPublic.lean/declarations/inl-mul-inr-eq-coe-tolex.md) | 139 | `result-track:5949f3c7c8100f12cb63bcc0f7a516d83858a0fb790289f457de60bd82c28729` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c32ec31d146e3d1bd96092acbb3e45d89ce6c099c3d26e60639c0bdc6ab8ffec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Lex/Variant4cd7f58f0bca0f326fb0f65b56f74f78f8f888e6f276ef25d724ad62290e68cf.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Lex/Variant4cd7f58f0bca0f326fb0f65b56f74f78f8f888e6f276ef25d724ad62290e68cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

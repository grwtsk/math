# Verification target: Ring Canonical Canonical

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b1ab9fb19ba1c69b45d6d4d1f1ddc63cb77e58c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Canonical/Variant333e67f348b7767d1b5401f11d730c4373c8c33b62ace298868293f9e4a543de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b1ab9fb19ba1c69b45d6d4d1f1ddc63cb77e58c`.

Source path: `GRWTSK/Algebra/Canonical/Variant333e67f348b7767d1b5401f11d730c4373c8c33b62ace298868293f9e4a543de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Canonical/Variant333e67f348b7767d1b5401f11d730c4373c8c33b62ace298868293f9e4a543de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Canonical` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CanonicallyOrderedCommSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/declarations/canonicallyorderedcommsemiring.md) | 36 | `declaration-track:c1d9c2b78738d130e602e727b486b8e10c0d04db98920fb69788776ec7fc9066` |
| 2 | `theorem` | [mul_add_mul_le_mul_add_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/declarations/mul-add-mul-le-mul-add-mul-source-edition-2.md) | 51 | `result-track:c9fd5c4850d144187323203c3b0da1b876a35679377a4e646cf758e6d976c1ca` |
| 3 | `theorem` | [mul_add_mul_le_mul_add_mul'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/declarations/mul-add-mul-le-mul-add-mul.md) | 59 | `result-track:38dc1f9f2239156cff0991388df13bf3a70c908bdb36b1220805a2dfbb13a255` |
| 4 | `theorem` | [mul_add_mul_lt_mul_add_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/declarations/mul-add-mul-lt-mul-add-mul-source-edition-2.md) | 66 | `result-track:fbb50a21df560aa976f002f5002c7c3e96a40c9800a584bf000e54a4c7bea52e` |
| 5 | `theorem` | [mul_add_mul_lt_mul_add_mul'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/declarations/mul-add-mul-lt-mul-add-mul.md) | 74 | `result-track:a3c013155026048ee93bc56c0f16dacaafa6db8b10666d66331a81b47859d5d0` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/declarations/instance.md) | 89 | `declaration-track:3897268814a62869c93471569e7f6aa1ce13838abb04c6ee211c623cc5b66b7d` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/declarations/instance-source-edition-2.md) | 94 | `declaration-track:61ab1633ad3371e89285444884692c6777295a8773a317c1dbe4890e53cbe996` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/declarations/instance-source-edition-4.md) | 102 | `declaration-track:b7290388600f883a1a7fb9208b0544ea6ee8dbe96cea50f9e6b8ac481b8458ba` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/declarations/instance-source-edition-3.md) | 107 | `declaration-track:b119bc2ff0dbd68ce4b0eb0b698fc25f7752546acb122890315e0ada1547a7c0` |
| 10 | `theorem` | [mul_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/declarations/mul-pos.md) | 115 | `result-track:87f46426509b6faacddc39dd6b8ef384ab1dbc74f6b5db52fd6b69f902863f49` |
| 11 | `theorem` | [mul_tsub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/declarations/mul-tsub-source-edition-2.md) | 131 | `result-track:44ee04e659e2c38ae8521c2b059df0e7cca45807b519c3fbc95abf499206e99a` |
| 12 | `theorem` | [tsub_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/declarations/tsub-mul-source-edition-2.md) | 138 | `result-track:7298fc8c7a196228faf89fb90de06e368b3baf23e097923d330f235bf3d77628` |
| 13 | `theorem` | [mul_tsub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/declarations/mul-tsub.md) | 147 | `result-track:1123bcb5ee2313b0eaf2e09bc065670d4486852be96a2729110ec9989a7f7aeb` |
| 14 | `theorem` | [tsub_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingCanonicalCanonical.lean/declarations/tsub-mul.md) | 151 | `result-track:29cf949fcc5e9ef6438932dc87a2d6339db4d851954075f193e00b77afff2f44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=937a6d817726a9986880d4caa78f64ead7983c4e05c78b0a4d358b529a2a9d6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Canonical/Variant333e67f348b7767d1b5401f11d730c4373c8c33b62ace298868293f9e4a543de.lean","GRWTSK/_verification/specifications/Algebra/Canonical/Variant333e67f348b7767d1b5401f11d730c4373c8c33b62ace298868293f9e4a543de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

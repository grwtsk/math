# Verification target: Non Unital Non Assoc Algebra Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0873bb1eadc4317010e779e7055876b36c866c2b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/NonUnitalNonAssocAlgebra/Variantc75caecef8c87810e17584f461936068c989c140dd83016954ba9439c04b0b4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/NonUnitalNonAssocAlgebraNamespaced.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/NonUnitalNonAssocAlgebraNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0873bb1eadc4317010e779e7055876b36c866c2b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/NonUnitalNonAssocAlgebra/Variantc75caecef8c87810e17584f461936068c989c140dd83016954ba9439c04b0b4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/NonUnitalNonAssocAlgebra/Variantc75caecef8c87810e17584f461936068c989c140dd83016954ba9439c04b0b4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.NonUnitalHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CommutatorRing](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/NonUnitalNonAssocAlgebraNamespaced.lean/declarations/commutatorring.md) | 52 | `declaration-track:2082a1b4ef069126a2ef4e628f59cb14a6349f654568e996b8d379efb6c7da68` |
| 2 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/NonUnitalNonAssocAlgebraNamespaced.lean/declarations/instance.md) | 54 | `declaration-track:0995489842dd9dc7935bedac9d6103892463a2c02d91988c2108bd2a97896e31` |
| 3 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/NonUnitalNonAssocAlgebraNamespaced.lean/declarations/instance-source-edition-2.md) | 58 | `declaration-track:3540a9224a42edcd797a74fb274b2c19f2ef2108a79859903faeb0aa97f62964` |
| 4 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/NonUnitalNonAssocAlgebraNamespaced.lean/declarations/instance-source-edition-4.md) | 60 | `declaration-track:b5823d4f706d33873ef448b493617ad3f6d3876fd7e05a5c3a746f4e1bb5636d` |
| 5 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/NonUnitalNonAssocAlgebraNamespaced.lean/declarations/instance-source-edition-5.md) | 62 | `declaration-track:d2138af5f9c3aa0458fc2163aff1aee19debd4775f28ce5880bfc957e30bbf9f` |
| 6 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/NonUnitalNonAssocAlgebraNamespaced.lean/declarations/instance-source-edition-3.md) | 64 | `declaration-track:b05cde19781b39b04abca24c1fee0a6640100981def45482e4f6d89468c91689` |
| 7 | `instance` | [isScalarTower](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/NonUnitalNonAssocAlgebraNamespaced.lean/declarations/isscalartower.md) | 68 | `declaration-track:60b0ef32156f6b29691b3b4be0c204ef3b85e4f82721a8e72d29e89f2d1ed608` |
| 8 | `instance` | [smulCommClass](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/NonUnitalNonAssocAlgebraNamespaced.lean/declarations/smulcommclass.md) | 72 | `declaration-track:2207a757bf3b6416d38190eb417fea2d7645bebaf2c943e11edaa958726cc1c9` |
| 9 | `def` | [toNonUnitalAlgHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/NonUnitalNonAssocAlgebraNamespaced.lean/declarations/tononunitalalghom.md) | 85 | `declaration-track:353e83b29679b71cf1a510bd6f508f96df9ce2938575f610d74a0c9f643563c2` |
| 10 | `theorem` | [toNonUnitalAlgHom_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/NonUnitalNonAssocAlgebraNamespaced.lean/declarations/tononunitalalghom-injective.md) | 91 | `result-track:cac57263dab0124fbd1a169ddfb796632ab4d0ba973191a14d0b3b7499c29411` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d02c0ff60ddf46668f3bd9a329cce03b07d222cdf3a0656c389949d1778342e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/NonUnitalNonAssocAlgebra/Variantc75caecef8c87810e17584f461936068c989c140dd83016954ba9439c04b0b4d.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/NonUnitalNonAssocAlgebra/Variantc75caecef8c87810e17584f461936068c989c140dd83016954ba9439c04b0b4d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Zsqrtd Quadratic Reciprocity Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ff11fe8ba39c066c97f5e424ad2fe63a30aef88",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variant715f7747b44e0291ed28a6927750de90c5cb9d42a8dc5a8148f0bfe4fa80d77c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ZsqrtdQuadraticReciprocityNamespacedAligned.lean/index.md) · [Full source](../../../../NumberTheory/ZsqrtdQuadraticReciprocityNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ff11fe8ba39c066c97f5e424ad2fe63a30aef88`.

Source path: `GRWTSK/NumberTheory/QuadraticReciprocity/Variant715f7747b44e0291ed28a6927750de90c5cb9d42a8dc5a8148f0bfe4fa80d77c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/QuadraticReciprocity/Variant715f7747b44e0291ed28a6927750de90c5cb9d42a8dc5a8148f0bfe4fa80d77c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Zsqrtd.GaussianInt` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.QuadraticReciprocity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../NumberTheory/ZsqrtdQuadraticReciprocityNamespacedAligned.lean/declarations/macro-rules.md) | 34 | `declaration-track:11668c31e4d7412ca9ab9390299c9231624054057de2b382df5b3e4d7b54857a` |
| 2 | `theorem` | [mod_four_eq_three_of_nat_prime_of_prime](../../../../NumberTheory/ZsqrtdQuadraticReciprocityNamespacedAligned.lean/declarations/mod-four-eq-three-of-nat-prime-of-prime.md) | 42 | `result-track:160e99750eb0b41082ec3508f4f5ab2edbfff3b0457ee5b2f12354bdfb8725f5` |
| 3 | `theorem` | [prime_of_nat_prime_of_mod_four_eq_three](../../../../NumberTheory/ZsqrtdQuadraticReciprocityNamespacedAligned.lean/declarations/prime-of-nat-prime-of-mod-four-eq-three.md) | 95 | `result-track:3684619b1a22e4afa8c08e17e64e601c8262f6e9f9c8eab7df7744ea01b27722` |
| 4 | `theorem` | [prime_iff_mod_four_eq_three_of_nat_prime](../../../../NumberTheory/ZsqrtdQuadraticReciprocityNamespacedAligned.lean/declarations/prime-iff-mod-four-eq-three-of-nat-prime.md) | 106 | `result-track:b04f23a9d65736aa46b1613aa68f10eb29232767af3beabd0148d9248abb5a5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce14e349f994e123739ddfe21cf8c2f04b05007e9216a97d305398d9febc4ed8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/QuadraticReciprocity/Variant715f7747b44e0291ed28a6927750de90c5cb9d42a8dc5a8148f0bfe4fa80d77c.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant715f7747b44e0291ed28a6927750de90c5cb9d42a8dc5a8148f0bfe4fa80d77c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

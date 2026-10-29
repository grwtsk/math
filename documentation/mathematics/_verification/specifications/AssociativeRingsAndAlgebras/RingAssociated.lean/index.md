# Verification target: Ring Associated

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "084e2ca5faded3787b508bf6ca33ff910a79a54a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Associated/Variante6bb598d9fa68d1cf416e4f078bd7462451b26d2065c8e632eb0782661f1b70e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingAssociated.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingAssociated.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `084e2ca5faded3787b508bf6ca33ff910a79a54a`.

Source path: `GRWTSK/Algebra/Associated/Variante6bb598d9fa68d1cf416e4f078bd7462451b26d2065c8e632eb0782661f1b70e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Associated/Variante6bb598d9fa68d1cf416e4f078bd7462451b26d2065c8e632eb0782661f1b70e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Associated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Units` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [neg_left](../../../../AssociativeRingsAndAlgebras/RingAssociated.lean/declarations/neg-left.md) | 18 | `result-track:96a719956046820ec94ce5edc98af9b4a132ac7f8e2c1d9cff934ea6719ecfbb` |
| 2 | `lemma` | [neg_right](../../../../AssociativeRingsAndAlgebras/RingAssociated.lean/declarations/neg-right.md) | 19 | `result-track:0856df15a0ba430cf6704215ad143282b3c7a4ce45b517bab36fbff7e7606319` |
| 3 | `lemma` | [neg_neg](../../../../AssociativeRingsAndAlgebras/RingAssociated.lean/declarations/neg-neg.md) | 20 | `result-track:ded82f099de9f161ea856d58bed720850190a6f7e9d3e5d07bd0cbd305b4e908` |
| 4 | `lemma` | [neg_left_iff](../../../../AssociativeRingsAndAlgebras/RingAssociated.lean/declarations/neg-left-iff.md) | 23 | `result-track:67d48255f63276efd7d1d2abc00a902baa41bfb2c1f5a11b4d9652ac885825aa` |
| 5 | `lemma` | [neg_right_iff](../../../../AssociativeRingsAndAlgebras/RingAssociated.lean/declarations/neg-right-iff.md) | 27 | `result-track:db195d195427167817712287659e323f94273413390338583d119f675d284e1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3ee4aed8a469d6fb440904bb21b8f8e0fa936867bfa6c5f51bf7e3da50f8527 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Associated/Variante6bb598d9fa68d1cf416e4f078bd7462451b26d2065c8e632eb0782661f1b70e.lean","GRWTSK/_verification/specifications/Algebra/Associated/Variante6bb598d9fa68d1cf416e4f078bd7462451b26d2065c8e632eb0782661f1b70e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

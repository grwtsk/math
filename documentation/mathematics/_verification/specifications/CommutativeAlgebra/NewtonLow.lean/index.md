# Verification target: Newton Low

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c521e1acd75a18a5c984e480e55232f104fa3acc",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variant9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NewtonLow.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NewtonLow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c521e1acd75a18a5c984e480e55232f104fa3acc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variant9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variant9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Vieta` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [esymm_cons_succ](../../../../CommutativeAlgebra/NewtonLow.lean/declarations/esymm-cons-succ.md) | 5 | `result-track:921c0ea5940e7a4db7aa6a4e30ee584bff758d5de40e71778dc67899d4e952de` |
| 2 | `lemma` | [esymm_zero](../../../../CommutativeAlgebra/NewtonLow.lean/declarations/esymm-zero.md) | 8 | `result-track:1063ced90d2a2ca19c23c75cc5ef50627594b13816ad9990ae26011d68556a90` |
| 3 | `lemma` | [newton_low](../../../../CommutativeAlgebra/NewtonLow.lean/declarations/newton-low.md) | 10 | `result-track:8eec02a4acf1fb3d393a97813ea7e8eb0a607bce1fd7f97d39cb81d1542ca5bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=579ef4d2ad2c3a51ec68f5e0b2253a3a805f7b5532112a31adb72c87e6416bc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variant9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variant9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

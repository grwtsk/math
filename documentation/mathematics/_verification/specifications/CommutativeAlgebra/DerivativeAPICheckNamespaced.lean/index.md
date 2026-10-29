# Verification target: Derivative APICheck Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "291499baf7b4474aea40053c9a8161d39d9b91fd",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57aDerivativeAPIChe/Variante2c2063162dc085b5e36fffaf382fb9ed702178208c1ea7f9f817df9fd834989.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/DerivativeAPICheckNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/DerivativeAPICheckNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `291499baf7b4474aea40053c9a8161d39d9b91fd`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57aDerivativeAPIChe/Variante2c2063162dc085b5e36fffaf382fb9ed702178208c1ea7f9f817df9fd834989.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57aDerivativeAPIChe/Variante2c2063162dc085b5e36fffaf382fb9ed702178208c1ea7f9f817df9fd834989.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.PDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pderiv_ofNat](../../../../CommutativeAlgebra/DerivativeAPICheckNamespaced.lean/declarations/pderiv-ofnat.md) | 16 | `result-track:87cd350e80d1caaa0d10a31da8056da518b4dafdf90ae00c9159f16be529cf20` |
| 2 | `example` | [(anonymous)](../../../../CommutativeAlgebra/DerivativeAPICheckNamespaced.lean/declarations/example.md) | 20 | `declaration-track:81a433693d17f46d48c31e8aa2884d17f910e27ffa1b3cf4d68b52bab3f865fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=951e0d8a87ea30ffce5f36b2b07244aa6abd9b0aab3e337ea349ed86ea631f07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57aDerivativeAPIChe/Variante2c2063162dc085b5e36fffaf382fb9ed702178208c1ea7f9f817df9fd834989.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57aDerivativeAPIChe/Variante2c2063162dc085b5e36fffaf382fb9ed702178208c1ea7f9f817df9fd834989.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

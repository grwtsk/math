# Verification target: Ring Theory Nakayama

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f30664d0fc44475c0a0199caa78bd121d2608ca9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Nakayama/Variant3f48296af9d9afa256626d579ae7ac3ef57d1e1151aa91b30cfbf069b133f2ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryNakayama.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryNakayama.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f30664d0fc44475c0a0199caa78bd121d2608ca9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Nakayama/Variant3f48296af9d9afa256626d579ae7ac3ef57d1e1151aa91b30cfbf069b133f2ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Nakayama/Variant3f48296af9d9afa256626d579ae7ac3ef57d1e1151aa91b30cfbf069b133f2ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.JacobsonIdeal` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_smul_of_le_smul_of_le_jacobson](../../../../CommutativeAlgebra/RingTheoryNakayama.lean/declarations/eq-smul-of-le-smul-of-le-jacobson.md) | 52 | `result-track:c79172f80c4b944c6e7189873776496a014247dd57ff539d42146cc91837aa21` |
| 2 | `theorem` | [eq_bot_of_le_smul_of_le_jacobson_bot](../../../../CommutativeAlgebra/RingTheoryNakayama.lean/declarations/eq-bot-of-le-smul-of-le-jacobson-bot.md) | 68 | `result-track:c4f4aca1bb7ceb0e9f73c3b6e65b8fe41eb5405d21fa1e37c3a4a4e4a2c3b131` |
| 3 | `theorem` | [smul_sup_eq_smul_sup_of_le_smul_of_le_jacobson](../../../../CommutativeAlgebra/RingTheoryNakayama.lean/declarations/smul-sup-eq-smul-sup-of-le-smul-of-le-jacobson.md) | 76 | `result-track:5af6651421f9777fc8bf9ab3cc6d9c39ebfa378a684c1779cbe7df08598ed8c5` |
| 4 | `theorem` | [smul_sup_le_of_le_smul_of_le_jacobson_bot](../../../../CommutativeAlgebra/RingTheoryNakayama.lean/declarations/smul-sup-le-of-le-smul-of-le-jacobson-bot.md) | 96 | `result-track:3e642c294a0b1b7011cc3893e1dd778ad536d0e31ec97de28114726efbf7ca5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f56ce109121de54fce926320081b83f189ad964dc6798fa70704de2d1ac4857a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Nakayama/Variant3f48296af9d9afa256626d579ae7ac3ef57d1e1151aa91b30cfbf069b133f2ac.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Nakayama/Variant3f48296af9d9afa256626d579ae7ac3ef57d1e1151aa91b30cfbf069b133f2ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

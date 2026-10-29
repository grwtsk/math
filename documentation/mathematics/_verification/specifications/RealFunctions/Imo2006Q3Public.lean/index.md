# Verification target: Imo2006 Q3 Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "742ed778b8a11b8f9950084271c8a09eec2298fc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/Imo2006Q3Public.lean/index.md) · [Full source](../../../../RealFunctions/Imo2006Q3Public.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `742ed778b8a11b8f9950084271c8a09eec2298fc`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean.json)

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
| 1 | `theorem` | [lhs_ineq](../../../../RealFunctions/Imo2006Q3Public.lean/declarations/lhs-ineq.md) | 38 | `result-track:ed1721c4b8a8e2a3511fe7a1e238daa821ad49f1d564e28f02824789ee9a71df` |
| 2 | `theorem` | [four_pow_four_pos](../../../../RealFunctions/Imo2006Q3Public.lean/declarations/four-pow-four-pos.md) | 44 | `result-track:a964288eefa0aa78c7811e5a1fe92b1777fc90c387da1a2fe131839578416689` |
| 3 | `theorem` | [mid_ineq](../../../../RealFunctions/Imo2006Q3Public.lean/declarations/mid-ineq.md) | 46 | `result-track:60d00faba32003057ab13c87bab6e2a77d0e0b8f1f64b7d4dc0518414800704e` |
| 4 | `theorem` | [rhs_ineq](../../../../RealFunctions/Imo2006Q3Public.lean/declarations/rhs-ineq.md) | 52 | `result-track:c59a32bd5fc62d1a70d9a65dd1933f669fba991fc9d8b9047c352bcfc3596d70` |
| 5 | `theorem` | [zero_lt_32](../../../../RealFunctions/Imo2006Q3Public.lean/declarations/zero-lt-32.md) | 56 | `result-track:9794f7dbe75dffca6094b6c51949eb98d2188b9238f6fad46787df96b801424c` |
| 6 | `theorem` | [subst_wlog](../../../../RealFunctions/Imo2006Q3Public.lean/declarations/subst-wlog.md) | 58 | `result-track:f6b8ad06f95c053ca451e97a9fb2002e60547d3348cf754341d354fb27704b53` |
| 7 | `theorem` | [subst_proof₁](../../../../RealFunctions/Imo2006Q3Public.lean/declarations/subst-proof.md) | 79 | `result-track:32f23290479c1b80e61010060eb7d1fd702eecef997e734bc8406bdd6a1cc685` |
| 8 | `theorem` | [proof₁](../../../../RealFunctions/Imo2006Q3Public.lean/declarations/proof-source-edition-2.md) | 88 | `result-track:aa24932c22a1e7caa98e137cbce760bc414d8d11de7ffe0e3476e5e1cbb50ecc` |
| 9 | `theorem` | [proof₂](../../../../RealFunctions/Imo2006Q3Public.lean/declarations/proof.md) | 96 | `result-track:5562d4be1af416241dcdf1e6ad4d909e0a14b40d509114ccc8eac46436b63c27` |
| 10 | `theorem` | [imo2006_q3](../../../../RealFunctions/Imo2006Q3Public.lean/declarations/imo2006-q3.md) | 119 | `result-track:a98024a15a5363a7798890b740e54e56d911f4ca940d90cc65c49b0cd19ad093` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=efc419658dde6ea159c9dfba32417448a34addcffba5093ac15415347c0d61c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean","GRWTSK/_verification/specifications/Analysis/SpecialFunctions/Imo2006Q3/Variant92c731df0c1dd27887be7fc7d68981b7cfbe4e06849ee398be7ab0159904f96c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

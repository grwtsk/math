# Verification target: Cotangent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "228767813c7731e456fd92f1d02cbfaa577becf6",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Cotangent/Variant5cc7262bcfb14be404a4705bd8c1f4fa21974290fe0c3de663f14634538f976e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/Cotangent.lean/index.md) · [Full source](../../../../SpecialFunctions/Cotangent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `228767813c7731e456fd92f1d02cbfaa577becf6`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Cotangent/Variant5cc7262bcfb14be404a4705bd8c1f4fa21974290fe0c3de663f14634538f976e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Cotangent/Variant5cc7262bcfb14be404a4705bd8c1f4fa21974290fe0c3de663f14634538f976e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Exp` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Complex.cot_eq_exp_ratio](../../../../SpecialFunctions/Cotangent.lean/declarations/complex-cot-eq-exp-ratio.md) | 18 | `result-track:099eb4d41ac6361f03809feda2a1c80cb6f15dd94d75bb9223abd9d9c8338d7c` |
| 2 | `lemma` | [Complex.cot_pi_eq_exp_ratio](../../../../SpecialFunctions/Cotangent.lean/declarations/complex-cot-pi-eq-exp-ratio.md) | 33 | `result-track:8bd8c95a3868cea4c591ce3b3a6e3e81478f8f493e683d652d3e2e13ad9e44dd` |
| 3 | `theorem` | [pi_mul_cot_pi_q_exp](../../../../SpecialFunctions/Cotangent.lean/declarations/pi-mul-cot-pi-q-exp.md) | 39 | `result-track:6ba40c2a7c7292eccadd8bfbb414119e22f5561c13db47c3795a539457e0e2cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45eb1171503d4e644464718e5e7580805f72191e3d41f6623cd8855bbd5655ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Cotangent/Variant5cc7262bcfb14be404a4705bd8c1f4fa21974290fe0c3de663f14634538f976e.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Cotangent/Variant5cc7262bcfb14be404a4705bd8c1f4fa21974290fe0c3de663f14634538f976e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Hopf Algebra Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "549ae79cf8431a347fb5c3bb1a24117cef8993f0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant8023fe242dbf977c552b753bc13d395f9ac17c388598eefceca7d143a2f04811.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/HopfAlgebraBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/HopfAlgebraBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `549ae79cf8431a347fb5c3bb1a24117cef8993f0`.

Source path: `GRWTSK/Algebra/Basic/Variant8023fe242dbf977c552b753bc13d395f9ac17c388598eefceca7d143a2f04811.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant8023fe242dbf977c552b753bc13d395f9ac17c388598eefceca7d143a2f04811.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Bialgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HopfAlgebraStruct](../../../../CommutativeAlgebra/HopfAlgebraBasic.lean/declarations/hopfalgebrastruct.md) | 49 | `declaration-track:cedbfb0ee5319fe70bb160ed21e1ab76d3fd6e29854732e99bb020dd2ed3f3f2` |
| 2 | `class` | [HopfAlgebra](../../../../CommutativeAlgebra/HopfAlgebraBasic.lean/declarations/hopfalgebra.md) | 56 | `declaration-track:818fda325dae27451726aa7f3bc2f1fa9f0967fbcffedd96357484c51e192d13` |
| 3 | `theorem` | [mul_antipode_rTensor_comul_apply](../../../../CommutativeAlgebra/HopfAlgebraBasic.lean/declarations/mul-antipode-rtensor-comul-apply.md) | 72 | `result-track:000486bca754ecc0936891ed4524a6ba068ad76c82f359145354bce0bfe6a395` |
| 4 | `theorem` | [mul_antipode_lTensor_comul_apply](../../../../CommutativeAlgebra/HopfAlgebraBasic.lean/declarations/mul-antipode-ltensor-comul-apply.md) | 78 | `result-track:60b1fa7754b0731b340d6182c75338db5bf2de8f4270517883d547a9aa51ab5c` |
| 5 | `theorem` | [antipode_one](../../../../CommutativeAlgebra/HopfAlgebraBasic.lean/declarations/antipode-one.md) | 84 | `result-track:a04ff2961b639f22412e12b7378b32c2259f64492ef575fe1e800fc9b7e8c7fa` |
| 6 | `lemma` | [sum_antipode_mul_eq](../../../../CommutativeAlgebra/HopfAlgebraBasic.lean/declarations/sum-antipode-mul-eq.md) | 91 | `result-track:6a5d4eff2930bf48395e0d2c4725f9bd20e03f61f932cf9b06f346358311b6d1` |
| 7 | `lemma` | [sum_mul_antipode_eq](../../../../CommutativeAlgebra/HopfAlgebraBasic.lean/declarations/sum-mul-antipode-eq.md) | 97 | `result-track:271d6c2dfcf5a335800c284cb8383b2d9cab50a0003fd67a6fc8d31620c0ac13` |
| 8 | `lemma` | [sum_antipode_mul_eq_smul](../../../../CommutativeAlgebra/HopfAlgebraBasic.lean/declarations/sum-antipode-mul-eq-smul.md) | 102 | `result-track:f376aa3302c11956fbe2f362c75fda64817ac98d9d77cf20ca96827b6a5078d0` |
| 9 | `lemma` | [sum_mul_antipode_eq_smul](../../../../CommutativeAlgebra/HopfAlgebraBasic.lean/declarations/sum-mul-antipode-eq-smul.md) | 107 | `result-track:612e70b0f46b05fa69e6393f2c46ffcb529d6d05399a6d764355e6383618cdb8` |
| 10 | `instance` | [toHopfAlgebra](../../../../CommutativeAlgebra/HopfAlgebraBasic.lean/declarations/tohopfalgebra.md) | 121 | `declaration-track:9b93a320e16907028e78f7de055efe7da665381c6c33eb4fb63a5c4dce761a41` |
| 11 | `theorem` | [antipode_eq_id](../../../../CommutativeAlgebra/HopfAlgebraBasic.lean/declarations/antipode-eq-id.md) | 127 | `result-track:584a9d35421abea88140014acb8c90e59c609c6c63c64786ab17627f37ff6e85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfa04e02fc9226f0d1164702813ad977b02b57165603c3eb2de598037f596faf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant8023fe242dbf977c552b753bc13d395f9ac17c388598eefceca7d143a2f04811.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant8023fe242dbf977c552b753bc13d395f9ac17c388598eefceca7d143a2f04811.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

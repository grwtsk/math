# Verification target: Mul Exp Neg Mul Sq Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8770f79d53c521ca2456c1d3d418782326995dcd",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MulExpNegMulSq/Variant142d48b2621c46aba5fabb127c2986285dc97cbce3238e12d09046182a5a8600.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/index.md) · [Full source](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8770f79d53c521ca2456c1d3d418782326995dcd`.

Source path: `GRWTSK/Topology/GeneralTopology/MulExpNegMulSq/Variant142d48b2621c46aba5fabb127c2986285dc97cbce3238e12d09046182a5a8600.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MulExpNegMulSq/Variant142d48b2621c46aba5fabb127c2986285dc97cbce3238e12d09046182a5a8600.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulExpNegMulSq](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/mulexpnegmulsq.md) | 51 | `declaration-track:7b511887d9ae16c0c3425ce95d14c00bec8ca7180b21ea08f6a488a4397e9691` |
| 2 | `theorem` | [mulExpNegSq_apply](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/mulexpnegsq-apply.md) | 53 | `result-track:13adb4cbcf0ca27107e2a9c7d5286258caa8c6de45e5558de3dbe4fba41fff2c` |
| 3 | `theorem` | [neg_mulExpNegMulSq_neg](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/neg-mulexpnegmulsq-neg.md) | 55 | `result-track:8743bd07c706835fbfb8fd423d3133b93e0e92cb8a3b6dd247fe27bf66ecb64e` |
| 4 | `theorem` | [mulExpNegMulSq_one_le_one](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/mulexpnegmulsq-one-le-one.md) | 58 | `result-track:df55624a5e1baebba0ad89b0e8f0590752e752c7297fceb901f590aeb779a4f3` |
| 5 | `theorem` | [neg_one_le_mulExpNegMulSq_one](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/neg-one-le-mulexpnegmulsq-one.md) | 64 | `result-track:7ae68ff4c8ed73fdf72efa423f985d0296dc94c8284cc3f8735f5786160baa98` |
| 6 | `theorem` | [abs_mulExpNegMulSq_one_le_one](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/abs-mulexpnegmulsq-one-le-one.md) | 68 | `result-track:9dc22aa20d5e61a4a7f4bff14ccf88deda4eb0ac2a9fbb4900d57d4e4716f525` |
| 7 | `theorem` | [continuous_mulExpNegMulSq](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/continuous-mulexpnegmulsq.md) | 74 | `result-track:c74c1001a166f1202f46490b1ff087f8fab9b88974414fada21ac78a2bc57bde` |
| 8 | `theorem` | [Mul Exp Neg Mul Sq Namespaced](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/mulexpnegmulsq-source-line-78-occurrence-2.md) | 78 | `result-track:22510f1526520998fd66fb65dd09d789a8deba622daf77af2d4dc57dd047eaf5` |
| 9 | `theorem` | [differentiableAt_mulExpNegMulSq](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/differentiableat-mulexpnegmulsq.md) | 82 | `result-track:095641aac87eef3a16658a333cca277aee626612f840d1cb9b099015fff5260f` |
| 10 | `theorem` | [differentiable_mulExpNegMulSq](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/differentiable-mulexpnegmulsq.md) | 86 | `result-track:a909e466c00b8e173272b93956f6dc443587fb2a05d341c9e91696fc77f8bb30` |
| 11 | `theorem` | [hasDerivAt_mulExpNegMulSq](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/hasderivat-mulexpnegmulsq.md) | 89 | `result-track:d925c445b93b9d34a617ad24ca53be6a65e4f9a3085a73554de7369eb707f9f0` |
| 12 | `theorem` | [deriv_mulExpNegMulSq](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/deriv-mulexpnegmulsq.md) | 97 | `result-track:9f8cc91614ff71905016da09a79901d7e26f69e45fce07557bc2321c4692f30e` |
| 13 | `theorem` | [norm_deriv_mulExpNegMulSq_le_one](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/norm-deriv-mulexpnegmulsq-le-one.md) | 101 | `result-track:25a473d90717471e11ab0dd02713070909d23a146939c9c830f73f259397fc55` |
| 14 | `theorem` | [nnnorm_deriv_mulExpNegMulSq_le_one](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/nnnorm-deriv-mulexpnegmulsq-le-one.md) | 116 | `result-track:d669ee12b99f99cac6de6e30af4466c6aaed6cbd5c3afa160eef4cfabbc52375` |
| 15 | `theorem` | [lipschitzWith_one_mulExpNegMulSq](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/lipschitzwith-one-mulexpnegmulsq.md) | 122 | `result-track:97d7490b83f6d4ff9d0f4c703f8026a34d2e23e07fa0f1051d91d18346d9f575` |
| 16 | `theorem` | [mulExpNegMulSq_eq_sqrt_mul_mulExpNegMulSq_one](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/mulexpnegmulsq-eq-sqrt-mul-mulexpnegmulsq-one.md) | 127 | `result-track:f75c10256bd3cdba708a73d556500d30befe04d50581e854f1eb27dc8d4e8e0d` |
| 17 | `theorem` | [abs_mulExpNegMulSq_le](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/abs-mulexpnegmulsq-le.md) | 140 | `result-track:e19e05b1b47c839d9532e891211d0092e69aa189d6c5aecba4ba5a9dc4739654` |
| 18 | `theorem` | [dist_mulExpNegMulSq_le_two_mul_sqrt](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/dist-mulexpnegmulsq-le-two-mul-sqrt.md) | 146 | `result-track:265b1b068385ff60dde3fc99135ae4c870ab515ffd23f603cd48349b230e1cc8` |
| 19 | `theorem` | [dist_mulExpNegMulSq_le_dist](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/dist-mulexpnegmulsq-le-dist.md) | 152 | `result-track:70eac86034906ebbc0aacea18e9b3202818d42ca151accb9d07f885fd2cb92a2` |
| 20 | `theorem` | [tendsto_mulExpNegMulSq](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/tendsto-mulexpnegmulsq.md) | 158 | `result-track:3172cf2defb67f66b74a75c6214ef0e5287f85cca98e31a9615e1211a2a21c76` |
| 21 | `theorem` | [abs_mulExpNegMulSq_comp_le_norm](../../../../SpecialFunctions/MulExpNegMulSqNamespaced.lean/declarations/abs-mulexpnegmulsq-comp-le-norm.md) | 167 | `result-track:22fb4632ab50bed7d4dcc513ad537732400b7cfdd0340788c7e5d90622aa9e88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22ba9bdd105261a320ae943a6d1057a7cd12a5f939336d048a9c019733fd619b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/MulExpNegMulSq/Variant142d48b2621c46aba5fabb127c2986285dc97cbce3238e12d09046182a5a8600.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/MulExpNegMulSq/Variant142d48b2621c46aba5fabb127c2986285dc97cbce3238e12d09046182a5a8600.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

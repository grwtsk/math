# Verification target: Schwarz Namespaced Abs Deriv Le Div Of Maps To Ball

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8f8b2ef54822f2928d8978c6eef4444df342b57",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant6154b5a1ef954e192c2f2b2e4ae320b698d816f5bc4d6d18f0fb5bb965e26060.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/SchwarzNamespacedAbsDerivLeDivOfMapsToBall.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/SchwarzNamespacedAbsDerivLeDivOfMapsToBall.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8f8b2ef54822f2928d8978c6eef4444df342b57`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant6154b5a1ef954e192c2f2b2e4ae320b698d816f5bc4d6d18f0fb5bb965e26060.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant6154b5a1ef954e192c2f2b2e4ae320b698d816f5bc4d6d18f0fb5bb965e26060.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.AbsMax` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [schwarz_aux](../../../../FunctionsOfAComplexVariable/SchwarzNamespacedAbsDerivLeDivOfMapsToBall.lean/declarations/schwarz-aux.md) | 73 | `result-track:3ac9cdc5e9963e9427f0495062ab60859c1e8b5224bca1ff8498309945cb463a` |
| 2 | `theorem` | [norm_dslope_le_div_of_mapsTo_ball](../../../../FunctionsOfAComplexVariable/SchwarzNamespacedAbsDerivLeDivOfMapsToBall.lean/declarations/norm-dslope-le-div-of-mapsto-ball.md) | 100 | `result-track:2b85d672de706064cc24ef2fb23dd0a7a51c5f96cf2ee6ca3554847c15972a46` |
| 3 | `theorem` | [affine_of_mapsTo_ball_of_exists_norm_dslope_eq_div](../../../../FunctionsOfAComplexVariable/SchwarzNamespacedAbsDerivLeDivOfMapsToBall.lean/declarations/affine-of-mapsto-ball-of-exists-norm-dslope-eq-div-source-edition-2.md) | 121 | `result-track:dcc47fe79f09af1aba9c7ea18d21d6bf41e9525f0bfd13dd9b563b2d5665b700` |
| 4 | `theorem` | [affine_of_mapsTo_ball_of_exists_norm_dslope_eq_div'](../../../../FunctionsOfAComplexVariable/SchwarzNamespacedAbsDerivLeDivOfMapsToBall.lean/declarations/affine-of-mapsto-ball-of-exists-norm-dslope-eq-div.md) | 140 | `result-track:8909e80b4dbce09331cd2969b54031a6818930bcbf74bdfd7bec7b0ea6f8b9c7` |
| 5 | `theorem` | [norm_deriv_le_div_of_mapsTo_ball](../../../../FunctionsOfAComplexVariable/SchwarzNamespacedAbsDerivLeDivOfMapsToBall.lean/declarations/norm-deriv-le-div-of-mapsto-ball.md) | 152 | `result-track:1d8180c81965ba11e017f72360dce46f2798c9746ef2ea7c043747fdc927cf69` |
| 6 | `theorem` | [dist_le_div_mul_dist_of_mapsTo_ball](../../../../FunctionsOfAComplexVariable/SchwarzNamespacedAbsDerivLeDivOfMapsToBall.lean/declarations/dist-le-div-mul-dist-of-mapsto-ball.md) | 160 | `result-track:6ec8b6981fde43da7a614a57fef0d14f993ea4a0d1e5f65852ea67274e7b535c` |
| 7 | `theorem` | [abs_deriv_le_div_of_mapsTo_ball](../../../../FunctionsOfAComplexVariable/SchwarzNamespacedAbsDerivLeDivOfMapsToBall.lean/declarations/abs-deriv-le-div-of-mapsto-ball.md) | 176 | `result-track:e860072d58b8e1b684e05c3fed36ed30492890f4dfd911677dc87e2320c05676` |
| 8 | `theorem` | [abs_deriv_le_one_of_mapsTo_ball](../../../../FunctionsOfAComplexVariable/SchwarzNamespacedAbsDerivLeDivOfMapsToBall.lean/declarations/abs-deriv-le-one-of-mapsto-ball.md) | 184 | `result-track:e4a8c834d6b515d15109ca4cecc112cf75523a7e0d328d5bd604b149183323b6` |
| 9 | `theorem` | [dist_le_dist_of_mapsTo_ball_self](../../../../FunctionsOfAComplexVariable/SchwarzNamespacedAbsDerivLeDivOfMapsToBall.lean/declarations/dist-le-dist-of-mapsto-ball-self.md) | 191 | `result-track:8fad077751fb48263a9a0a66b9ee553ecf392ab7cf394f8163ff58080ee786f9` |
| 10 | `theorem` | [abs_le_abs_of_mapsTo_ball_self](../../../../FunctionsOfAComplexVariable/SchwarzNamespacedAbsDerivLeDivOfMapsToBall.lean/declarations/abs-le-abs-of-mapsto-ball-self.md) | 202 | `result-track:93a73efa2cff0f11c780a62298a6fcf43a0516f036f23c9b6822564178a68c35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08a6d0ef4ee7d13c802ffa9ed485fcef287dcee40b3e83d651fa13bf6dc6cdd4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant6154b5a1ef954e192c2f2b2e4ae320b698d816f5bc4d6d18f0fb5bb965e26060.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Schwarz/Variant6154b5a1ef954e192c2f2b2e4ae320b698d816f5bc4d6d18f0fb5bb965e26060.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

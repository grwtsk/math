# Verification target: Initial Formula Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fa70a130343044ca3fb1a14286c77206441f14c",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fa70a130343044ca3fb1a14286c77206441f14c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/instance.md) | 46 | `declaration-track:fbd6fd66c2064e494be3036c3d772ccacbc72211cc80ec8608686f8337fa7edd` |
| 2 | `def` | [rCoeff](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/rcoeff.md) | 56 | `declaration-track:20b4884683937be1a0764ba70f483ff875c00a588dc4edecded1ab2c227a4e47` |
| 3 | `def` | [sCoeff](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/scoeff.md) | 70 | `declaration-track:ea6fe6de406f4abe428d09fe77bcc8e07d21f102c95a11fd1c9a1b4ad4c9f762` |
| 4 | `def` | [scalePolynomial](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/scalepolynomial.md) | 83 | `declaration-track:a3d468cf5a5251308661c2cd93e70f08a9ea5ce3515c6a358271771065b89429` |
| 5 | `def` | [positivePolynomial](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/positivepolynomial.md) | 87 | `declaration-track:764d25d80e3353ecbaecfc0b456be3521429c7bbfe2a56907805ec2c2a574cf1` |
| 6 | `def` | [mixedPolynomial](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/mixedpolynomial.md) | 90 | `declaration-track:b44732fcf3c6d99a8e13bb2b166222c64ebeb01a3b5cc8754bf5b7e7bd907c0f` |
| 7 | `theorem` | [scalePolynomial_eval](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/scalepolynomial-eval.md) | 93 | `result-track:3391770bf1a527ab9657efaec3495e99917ce622a20dadb8de8c0b0ad1d2d70b` |
| 8 | `theorem` | [positivePolynomial_eval](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/positivepolynomial-eval.md) | 99 | `result-track:f49dbcbb5d1863dca25a4268d78a151015c71524134849864857e32ec13fb15d` |
| 9 | `theorem` | [mixedPolynomial_eval](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/mixedpolynomial-eval.md) | 104 | `result-track:e8b796b3962f4fa49f4297a8971b85b72b720676780e4760075603496553b9a2` |
| 10 | `theorem` | [positivePolynomial_expansion](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/positivepolynomial-expansion.md) | 110 | `result-track:b54d03c75d3bf64faace6381061fd5d9d6de764a0719dae1f9d8632a0406ccad` |
| 11 | `theorem` | [mixedPolynomial_expansion](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/mixedpolynomial-expansion.md) | 124 | `result-track:2bce22f694736148bfcd32641f17835b03d5bdb495a187fac9a4c9463e18134a` |
| 12 | `theorem` | [positivePolynomial_natDegree_le](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/positivepolynomial-natdegree-le.md) | 135 | `result-track:36c8f57a54b79388fa895fed851d2b197cdee1221fe21a5517e5b2c74249a37b` |
| 13 | `theorem` | [mixedPolynomial_natDegree_le](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/mixedpolynomial-natdegree-le.md) | 140 | `result-track:8c2ef58559ef425ae5c13343299e3712bbbc5e87b77f1628309d279b83814f09` |
| 14 | `theorem` | [positivePolynomial_coeff](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/positivepolynomial-coeff.md) | 146 | `result-track:36f86c20d8c64d79fcbceadb70cb952559d28621b9d6fcfed84c6cbd2723720a` |
| 15 | `theorem` | [positivePolynomial_neg_coeff](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/positivepolynomial-neg-coeff.md) | 156 | `result-track:457053020610f0c86f2dff7e9b82b3ac3373ec959ccbc87ada14863715d87ef7` |
| 16 | `theorem` | [mixedPolynomial_coeff](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/mixedpolynomial-coeff.md) | 165 | `result-track:165d821283ddd58ee22027b589aa88bea793ca4f4ef92cf0c4a278c327866756` |
| 17 | `def` | [polynomialKernel](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/polynomialkernel.md) | 175 | `declaration-track:ad163ddf66613cd89921161c85671e86b94089b309ef7a267b2c985a2b0b0505` |
| 18 | `def` | [sourceKernel](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/sourcekernel.md) | 179 | `declaration-track:2d02509375c94221100fa9733dfecc633122fddb4ca413e51cb655dcb9930e39` |
| 19 | `def` | [equation20Summand](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/equation20summand.md) | 186 | `declaration-track:4f101bf5e916c1dfea808add17d1afaf9b156d76a996a5e0fa4b432deabefd8f` |
| 20 | `theorem` | [polynomialKernel_positive](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/polynomialkernel-positive.md) | 194 | `result-track:78517d182f0534cd593b0063b5b642ec2fcd8d83ccbc33736411ee54c798fd58` |
| 21 | `theorem` | [polynomialKernel_negative](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/polynomialkernel-negative.md) | 206 | `result-track:968d0f766f7dd876e357810a07a75b969d151dd7ba09eeaff42d8588aef4e263` |
| 22 | `theorem` | [polynomialKernel_mixed](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/polynomialkernel-mixed.md) | 218 | `result-track:6d6d3fe173aa4c8d61a3967bef7fb0b4aa4dede46e830ad5dcb35b32ce6bd776` |
| 23 | `theorem` | [sourceKernel_eq_equation20Summand](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/sourcekernel-eq-equation20summand.md) | 232 | `result-track:6ccd1bf4e7f2e55af591a2f800c651878379b2396af4543f14f4b073258db336` |
| 24 | `def` | [weightedPolynomial](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/weightedpolynomial.md) | 247 | `declaration-track:12dcbe7f00d739b5464015941c9e78e5b74e8cffff4bcce671950e45fe5738ca` |
| 25 | `theorem` | [weightedPolynomial_eq_sum](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/weightedpolynomial-eq-sum.md) | 251 | `result-track:96c6d5054db4b7fd6fb82c071ba8a782fc27a7a85eb386b0b4a94952b2bb8302` |
| 26 | `theorem` | [weightedPolynomial_integrable](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/weightedpolynomial-integrable.md) | 268 | `result-track:fe537094cf9c367db17f4913fe21f8758af0144da6485e0bb01b18e443aab1d7` |
| 27 | `theorem` | [integral_weightedPolynomial](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/integral-weightedpolynomial.md) | 281 | `result-track:4ba22345119d40783fa1702fc2ecc059e569f11f936dd836875edadb6b9eb184` |
| 28 | `theorem` | [weighted_expandedSummand_eq](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/weighted-expandedsummand-eq.md) | 300 | `result-track:e0c79d82e32544b722f52aee138480f7b7b64859b270d5869c7d0abbc9157d48` |
| 29 | `theorem` | [occurrence_integrable](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/occurrence-integrable.md) | 329 | `result-track:2c7987997a9006c24f2cb193063338772c83fa9eed8279944022a869f24d4520` |
| 30 | `theorem` | [integral_occurrence](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/integral-occurrence.md) | 366 | `result-track:1e9d8ab2937cbc0e8839036d0d9474f646c3b0823f0304e432c32c5b605ab23f` |
| 31 | `def` | [occurrenceIntegrand](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/occurrenceintegrand.md) | 416 | `declaration-track:7983fa23a5b889628d7f4e054127bfb024e9b5ecd064341033f2726545bfb18f` |
| 32 | `def` | [scaleMajorant](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/scalemajorant.md) | 422 | `declaration-track:4634f8acf0f7f79e68e600234fa84358a46833917182df39ffeb183f82b0e80a` |
| 33 | `theorem` | [scaleMajorant_nonneg](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/scalemajorant-nonneg.md) | 426 | `result-track:6dd7efbb456c7868e0190ee4ae25bfc16c20decdc8d4e8ef400af3645e581f2f` |
| 34 | `theorem` | [scaleMajorant_integrable](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/scalemajorant-integrable.md) | 434 | `result-track:a8750826bcfcfa80ee737cef75d703541c0b8a39b0f1519bd784fe5ae5c1844e` |
| 35 | `theorem` | [occurrenceIntegrand_norm_le](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/occurrenceintegrand-norm-le.md) | 463 | `result-track:b3003e8c8925a5a6acd2e3c83bf07d43be0bedf568fa35e840006282d4abfef3` |
| 36 | `theorem` | [integral_norm_le](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/integral-norm-le.md) | 496 | `result-track:aa52fc3d4000f52568d742080dad241f6b17e5c080129f712ac51cc15997f1ea` |
| 37 | `theorem` | [integral_norms_summable](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/integral-norms-summable.md) | 511 | `result-track:231b0b07161fb791eee44b6c4ee17cccf0dfba5664a5b7086adef164fa738321` |
| 38 | `theorem` | [summedIntegrand_eq](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/summedintegrand-eq.md) | 526 | `result-track:a9abf89f32855c5178719b42caed92955c5a558a65c1a070c61e82edaef4e529` |
| 39 | `theorem` | [integral_tsum_occurrences](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/integral-tsum-occurrences.md) | 538 | `result-track:0dd4fcae994cdbdba9362d5d671b3896660f6375e1510dd2a8d809dfcfd75101` |
| 40 | `theorem` | [integrals_enorm_ne_top](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/integrals-enorm-ne-top.md) | 553 | `result-track:23da2f2e40c95a66fcc3ff1f6b6000e19e0df7d7145f7eb29d0a6686fce13bfa` |
| 41 | `theorem` | [summedIntegrand_integrable](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/summedintegrand-integrable.md) | 571 | `result-track:18d82d9da09a7bb178cd6d89988449dbb34926ba54c612b7cbcca39e1aee7b29` |
| 42 | `theorem` | [weightedSource_laplace_integrable](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/weightedsource-laplace-integrable.md) | 596 | `result-track:485fa2e3f58f45ddb9047b97dd6f4d444025d85424c40675a24cb46177413a8b` |
| 43 | `theorem` | [equation20](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/equation20.md) | 608 | `result-track:21e15315ecc5d607f05e3a3ac56d6e921b79c6ffd8e95174fc2f9bc26c275847` |
| 44 | `theorem` | [equation20_norms_summable](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/equation20-norms-summable.md) | 630 | `result-track:5c498770d6640ad27ad67723a04cf51a8fae3d371619dfdb95b92def2ed6321d` |
| 45 | `def` | [InitialFormulaCheckpoint](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/initialformulacheckpoint.md) | 645 | `declaration-track:8fb6d44162a275d6515a19495adcc27634a4a31b99d0aed21f067421fcc5cc3d` |
| 46 | `theorem` | [initial_formula_checkpoint](../../../../MeasureAndIntegration/InitialFormulaNamespaced.lean/declarations/initial-formula-checkpoint.md) | 661 | `result-track:e2729438e87e396e4e8e45cf6059d2c5bcc5a80f133309b3c2b76a60b80d7a39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=354ae1a1b49e6ab1d6f51fcdfc410a0586b9954e665b4f3aced46cf12b1b9031 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

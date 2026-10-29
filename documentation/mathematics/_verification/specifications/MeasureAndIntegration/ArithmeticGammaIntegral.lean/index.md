# Verification target: Arithmetic Gamma Integral

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6284810d6fc954a6e11b670d3e6daffb4ecf01a9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variant612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6284810d6fc954a6e11b670d3e6daffb4ecf01a9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variant612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variant612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.FullQuadraticObstruction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.HalfLinePolynomialLaplace` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exponential_cosine_laplace_integrable](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/exponential-cosine-laplace-integrable.md) | 13 | `result-track:f6324fa4ebe1e40ebcf8cf19219ea6163596f30e3e05e92bfb7f69e8d8753731` |
| 2 | `theorem` | [exponential_cosine_laplace_integral](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/exponential-cosine-laplace-integral.md) | 24 | `result-track:ac690f49be765893ffedbf937ac126cf64db42c8ace248f649db1c1da1e5338e` |
| 3 | `theorem` | [reciprocal_kernel_difference_integrable](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/reciprocal-kernel-difference-integrable.md) | 44 | `result-track:cb04b3871fdb05dc5acbde30f86e27e348049008e3bf7b020f281c3278202e5f` |
| 4 | `theorem` | [reciprocal_kernel_difference_integral](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/reciprocal-kernel-difference-integral.md) | 53 | `result-track:9d887453c7dac336b8730a01f9d46f0881457960b65cc295442ddee1d90f0df8` |
| 5 | `def` | [gammaDifferenceAtom](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/gammadifferenceatom.md) | 69 | `declaration-track:eeb9c04dbd244ce43e32c72c111900c113ddefb7cdd3b84e1c755fa6343a8fe4` |
| 6 | `def` | [gammaDirichletDensity](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/gammadirichletdensity.md) | 72 | `declaration-track:bd3e6b32531a46d1b81f7d304bbe793337dfaa9fbba87c9315e22d34834ede5e` |
| 7 | `def` | [gammaGramIntegrand](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/gammagramintegrand.md) | 75 | `declaration-track:5f27bbfbda7227ec7070253cbd4ad72c94d10531fd73f4282a130f234696947b` |
| 8 | `theorem` | [gamma_gram_integrand_eq_cosine](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/gamma-gram-integrand-eq-cosine.md) | 78 | `result-track:2ab9f587f2847fe029b8ef2e96aa39780ace3f639543dbcb8f3fa6cdec00dcab` |
| 9 | `theorem` | [gamma_difference_atom_nonneg](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/gamma-difference-atom-nonneg.md) | 86 | `result-track:fa548499f74180985a70d729dc9bb976e6cde4fd85274ce3d204cc068bf80ed3` |
| 10 | `theorem` | [gamma_difference_atom_integrable](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/gamma-difference-atom-integrable.md) | 91 | `result-track:4500ee662071e2367925a6a48c733bdac7ad4795388a183f1e57ed2e85056b80` |
| 11 | `theorem` | [gamma_difference_atom_integral](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/gamma-difference-atom-integral.md) | 95 | `result-track:bf8e3e9401d30e85c36274954f7bc05a948da3883417ace19fbc37fc6aa97b84` |
| 12 | `theorem` | [gamma_difference_atom_eq_geometric](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/gamma-difference-atom-eq-geometric.md) | 99 | `result-track:5c978fa917a85c4883b7dd154cb4e39a35751a759efeaab172b3e651f0ba9280` |
| 13 | `theorem` | [gamma_difference_atoms_summable](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/gamma-difference-atoms-summable.md) | 107 | `result-track:e39602a87ff777fbb6adaccb9101de643a1dd662bf2082f8ad27147c6edf65a9` |
| 14 | `theorem` | [gamma_difference_atoms_tsum](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/gamma-difference-atoms-tsum.md) | 113 | `result-track:0601882a3a2d11464678206f944576e5b6e8225f1b882be6b83d9d8445ead267` |
| 15 | `theorem` | [gamma_gram_integrand_nonneg](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/gamma-gram-integrand-nonneg.md) | 122 | `result-track:d85ebdb9ae2e1e5ad5e7ad3d1873e9ed989bf88d9f296ff1fabc72b86c41206f` |
| 16 | `theorem` | [gamma_atom_integral_norms_summable](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/gamma-atom-integral-norms-summable.md) | 130 | `result-track:c818a4cb139b40c68292c1ae1043051acd7f2134ebc8a7f046d7b2e18ce22fda` |
| 17 | `theorem` | [gamma_gram_integrand_integrable](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/gamma-gram-integrand-integrable.md) | 136 | `result-track:d54ff54092f34542d546be88ab164d6a52470964b41257c4a19ce91a07a63e07` |
| 18 | `theorem` | [archimedean_difference_eq_gamma_gram_integral](../../../../MeasureAndIntegration/ArithmeticGammaIntegral.lean/declarations/archimedean-difference-eq-gamma-gram-integral.md) | 172 | `result-track:d5e199ed840191b7694fe75e5ade2df596b63e636d59f23a09caf6600a7d6415` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecb3e7b1227cada9a34971f487150b0092b1df0b60988d5ef49ebb943cdfb963 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variant612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variant612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

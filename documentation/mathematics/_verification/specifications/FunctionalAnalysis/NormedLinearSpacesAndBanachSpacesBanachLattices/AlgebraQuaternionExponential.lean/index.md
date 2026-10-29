# Verification target: Algebra Quaternion Exponential

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c202556f03cf720d7ea96de8aec8acfd34b8cc19",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variantbbb01c322c19bc466bb72db26a5c42b9209b7ae0f13c1bacad93a0475fbcdbc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraQuaternionExponential.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraQuaternionExponential.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c202556f03cf720d7ea96de8aec8acfd34b8cc19`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variantbbb01c322c19bc466bb72db26a5c42b9209b7ae0f13c1bacad93a0475fbcdbc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/QuaternionExponential/Variantbbb01c322c19bc466bb72db26a5c42b9209b7ae0f13c1bacad93a0475fbcdbc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Quaternion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Exponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Series` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraQuaternionExponential.lean/declarations/exp-coe.md) | 32 | `result-track:c0b97b89502d9202a9e580dc8b66e4a609d2f5d1d694101ec8dcada7e42d4cc0` |
| 2 | `theorem` | [expSeries_even_of_imaginary](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraQuaternionExponential.lean/declarations/expseries-even-of-imaginary.md) | 36 | `result-track:f8ba9a7f23882d3dfa10650ca8f81d8fac3aaa2471e497ca6f4652bf67746509` |
| 3 | `theorem` | [expSeries_odd_of_imaginary](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraQuaternionExponential.lean/declarations/expseries-odd-of-imaginary.md) | 56 | `result-track:6e448bd39248a3cab268ff76438db46cbe70e81b104eb7d4a6655e72a0250895` |
| 4 | `theorem` | [hasSum_expSeries_of_imaginary](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraQuaternionExponential.lean/declarations/hassum-expseries-of-imaginary.md) | 79 | `result-track:f50ea73d4cd9609a0a72084f1a4af2e62127ca8c1099eef35379161295f85445` |
| 5 | `theorem` | [exp_of_re_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraQuaternionExponential.lean/declarations/exp-of-re-eq-zero.md) | 94 | `result-track:c6521351452b3dadbeb079d9c2b9138427c1bacaed519d8a1be8429f89b9c8d5` |
| 6 | `theorem` | [exp_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraQuaternionExponential.lean/declarations/exp-eq.md) | 102 | `result-track:242833e5c9adaabc5d4b53ccddcebb3222a5e69a51613de0f76e13cfdc97316f` |
| 7 | `theorem` | [re_exp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraQuaternionExponential.lean/declarations/re-exp.md) | 108 | `result-track:9ef863d010c0855c262d775868489f2fe67c7b92958fa1e81dab221f3ec0e6c0` |
| 8 | `theorem` | [im_exp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraQuaternionExponential.lean/declarations/im-exp.md) | 110 | `result-track:f2413911f42e8f854659bc688f2b69bf696c97c80f6ff923302c2d109faaa5b9` |
| 9 | `theorem` | [normSq_exp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraQuaternionExponential.lean/declarations/normsq-exp.md) | 113 | `result-track:1c86c367b73b8288972e82510f63c58a6b97d23dad6466cf2ca80619e913f4d3` |
| 10 | `theorem` | [norm_exp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraQuaternionExponential.lean/declarations/norm-exp.md) | 132 | `result-track:ba23747087d8f50be7b13aef2ca654e32668cdd894b207bab56c94fd4372cbe2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73a0470bde730ad758a365a51318b3d667a49764d9de65c14d8a41d32911e4f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variantbbb01c322c19bc466bb72db26a5c42b9209b7ae0f13c1bacad93a0475fbcdbc3.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/QuaternionExponential/Variantbbb01c322c19bc466bb72db26a5c42b9209b7ae0f13c1bacad93a0475fbcdbc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Coefficients

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c3daba672dc38c3b250ae4f811aef996f181a04",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Coefficients/Variantc45c0f7d2b0128d1ccab586bca92c6db0a850d1ad25fd9ddb9f4180e91636162.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/Coefficients.lean/index.md) · [Full source](../../../../CommutativeAlgebra/Coefficients.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c3daba672dc38c3b250ae4f811aef996f181a04`.

Source path: `GRWTSK/Algebra/Coefficients/Variantc45c0f7d2b0128d1ccab586bca92c6db0a850d1ad25fd9ddb9f4180e91636162.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Coefficients/Variantc45c0f7d2b0128d1ccab586bca92c6db0a850d1ad25fd9ddb9f4180e91636162.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.ULift` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Defs` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoefficientContext](../../../../CommutativeAlgebra/Coefficients.lean/declarations/coefficientcontext.md) | 19 | `declaration-track:328a9e5cb13c7f6f92bae05c6abc874191febfa4053ec1647daa7ac2d0cfd534` |
| 2 | `def` | [integral](../../../../CommutativeAlgebra/Coefficients.lean/declarations/integral.md) | 28 | `declaration-track:a4f41bfd888e87703d495552f2de01a5bb31bf9d058f1cf49c56c70fde5be98c` |
| 3 | `def` | [integralLifted](../../../../CommutativeAlgebra/Coefficients.lean/declarations/integrallifted.md) | 32 | `declaration-track:68e89b8e12c2ed890adf9e7cbd0a86eef7faa4e50e46f4c2a76316773eac0fd4` |
| 4 | `def` | [rational](../../../../CommutativeAlgebra/Coefficients.lean/declarations/rational.md) | 36 | `declaration-track:fed29acaf430e790c754f5accaf0b94a42208282b52ea42bc9d42a5db19ef061` |
| 5 | `def` | [modulo](../../../../CommutativeAlgebra/Coefficients.lean/declarations/modulo.md) | 40 | `declaration-track:26aac674bae95cb92e94712b0589227089b58109c96c7036057c5465ea44cf3f` |
| 6 | `structure` | [LocalizationDatum](../../../../CommutativeAlgebra/Coefficients.lean/declarations/localizationdatum.md) | 46 | `declaration-track:65a59e844b11597560c2962a1ffc5fa64d86c4d9046c1fd31e6c2158a6751bd0` |
| 7 | `def` | [context](../../../../CommutativeAlgebra/Coefficients.lean/declarations/context.md) | 52 | `declaration-track:252e12d933b1392b7c85b05b622cc78086885e7284e98bb3c5271f878208fb71` |
| 8 | `def` | [algebraMapComparison](../../../../CommutativeAlgebra/Coefficients.lean/declarations/algebramapcomparison.md) | 57 | `declaration-track:3eff5a36cef2734e7b1054da46608168668cd80437e996f641e82155e728d04e` |
| 9 | `structure` | [CompletionDatum](../../../../CommutativeAlgebra/Coefficients.lean/declarations/completiondatum.md) | 68 | `declaration-track:f4423123dcb3a1a0f302a73722163ca620a9546a2b2286d5550e3e2c48e54fa6` |
| 10 | `def` | [context](../../../../CommutativeAlgebra/Coefficients.lean/declarations/context-source-edition-2.md) | 77 | `declaration-track:50f8711ca1dab1d4a87f562ba2aa06bfe0349ab8fb39f3314df7683c868d3875` |
| 11 | `def` | [algebraMapComparison](../../../../CommutativeAlgebra/Coefficients.lean/declarations/algebramapcomparison-source-edition-2.md) | 81 | `declaration-track:525ca9b94c1daad20f2c6a1b5508bad546d5f87e19c5eb2a0865340c0ad3bfaa` |
| 12 | `structure` | [CoefficientChange](../../../../CommutativeAlgebra/Coefficients.lean/declarations/coefficientchange.md) | 88 | `declaration-track:640c1a8e8fb85f81a6adcd41542bd646d157444ef27ecb7e7acb51f2c3ad81ab` |
| 13 | `def` | [id](../../../../CommutativeAlgebra/Coefficients.lean/declarations/id.md) | 95 | `declaration-track:3aa2804486edc11e9c2259d637f9c046a142ce12475c47298649a31643322e6e` |
| 14 | `def` | [comp](../../../../CommutativeAlgebra/Coefficients.lean/declarations/comp.md) | 99 | `declaration-track:9300f372de15553bef180b9f733240c34f634a25f187c33923126407bf1218c3` |
| 15 | `theorem` | [id_apply](../../../../CommutativeAlgebra/Coefficients.lean/declarations/id-apply.md) | 108 | `result-track:8ea3626050967d2b59503b2fdd912e479bb35d783664b3543685936774f8894e` |
| 16 | `theorem` | [comp_apply](../../../../CommutativeAlgebra/Coefficients.lean/declarations/comp-apply.md) | 113 | `result-track:68f9c3c24caf27546efaecaf3c986ffcc319fceb63584807854f1a0ac123aa58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=805cdbb74d96a3df9579ca04cb6c1bb4f1455e0653776f37a29701166235b363 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Coefficients/Variantc45c0f7d2b0128d1ccab586bca92c6db0a850d1ad25fd9ddb9f4180e91636162.lean","GRWTSK/_verification/specifications/Algebra/Coefficients/Variantc45c0f7d2b0128d1ccab586bca92c6db0a850d1ad25fd9ddb9f4180e91636162.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

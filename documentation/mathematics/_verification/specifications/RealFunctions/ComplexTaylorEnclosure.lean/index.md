# Verification target: GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7c7a410d9ed22cfc21b37faa2356a9de7b9341d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/ComplexTaylorEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ComplexTaylorEnclosure.lean/index.md) · [Full source](../../../../RealFunctions/ComplexTaylorEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7c7a410d9ed22cfc21b37faa2356a9de7b9341d`.

Source path: `GRWTSK/Analysis/ErrorBounds/ComplexTaylorEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/ComplexTaylorEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Exponential` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.NormCast` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [taylorValue](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/taylorvalue.md) | 29 | `declaration-track:88b0d7ca3b5b2b9726acefca43a93e00845925b8807b9551d9821df6781e540f` |
| 2 | `def` | [taylorTail](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/taylortail.md) | 33 | `declaration-track:2d1483f7f756c7b4f723018c98c509aa3766975db8156ee1626841a33e1a0869` |
| 3 | `def` | [componentBound](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/componentbound.md) | 36 | `declaration-track:eec46d47c9a233cd20d5206240f28c4ecc8d854b1ff8816e871673233d1a9330` |
| 4 | `theorem` | [norm_le_componentBound](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/norm-le-componentbound.md) | 38 | `result-track:b216b405571d0612a4aff4aaad842642013e07b1a9ed16f06008bd8e1b92eee2` |
| 5 | `theorem` | [componentBound_nonneg](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/componentbound-nonneg.md) | 41 | `result-track:4f322c863776cb934d261b482f101a9f61c828d75de0ca8d1cbf58da428a1e7a` |
| 6 | `theorem` | [taylorTail_nonneg](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/taylortail-nonneg.md) | 44 | `result-track:aa36a6e216790cff633a05da412495a39338b83f340b31cc25c46c15ccafc9d0` |
| 7 | `theorem` | [exponential_tail](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/exponential-tail.md) | 48 | `result-track:fe8636b21cc42ece7699069b1a25140ed68b29228ef5f1a6d9bd225314a1c22d` |
| 8 | `def` | [powerRadius](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/powerradius.md) | 60 | `declaration-track:5faa97f38946579c80bd6e1f6e8534f9c539b2ac3df35dd12c8878a1cc483ac0` |
| 9 | `theorem` | [powerRadius_nonneg](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/powerradius-nonneg.md) | 64 | `result-track:80fc55a9d2d447b5bf09fcc2e869c3f9c4524c9a834a3d7e504bfa6eb998920c` |
| 10 | `theorem` | [powerRadius_succ](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/powerradius-succ.md) | 71 | `result-track:2b2cca3dea38e2d842507eb079ab6d489cecbca2b64b81b337e601228d43db5c` |
| 11 | `theorem` | [power_error](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/power-error.md) | 80 | `result-track:95e5a2b35c8fbdfa4f6e8ef60577d991f1a20b732196386da5ce7d049602fe97` |
| 12 | `def` | [polynomialRadius](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/polynomialradius.md) | 99 | `declaration-track:2e19e044ae591f3d16f286a323f3159232bd2aa70ab131b8cad93e0a0cf2600f` |
| 13 | `theorem` | [polynomial_error](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/polynomial-error.md) | 102 | `result-track:1326a3faacdfc98c097ccf8cb53a3cfff68141e9116954f9a1d8f37b56e77634` |
| 14 | `theorem` | [exponential_enclosure](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/exponential-enclosure.md) | 116 | `result-track:08971d91568d45c825959528978fb4af8653dfac592b7e74e668981a1658f765` |
| 15 | `theorem` | [sum_from_step_errors](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/sum-from-step-errors.md) | 129 | `result-track:d3b699a77ba469caa6429220df6a97f06172b823ae0381d90e45b6d389a66e86` |
| 16 | `theorem` | [zero_terms_control](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/zero-terms-control.md) | 147 | `result-track:32395b32a960614e832d0883996022a64076d48c33f41c2078b95ffa1fbcdc8e` |
| 17 | `theorem` | [polynomialRadius_two](../../../../RealFunctions/ComplexTaylorEnclosure.lean/declarations/polynomialradius-two.md) | 152 | `result-track:7b2cc908a2d107ecbb65f45dc9550bdcfe8c24517bb1441643ab2f0a08b4fdf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a14ed9884f36c6ac24d04bd85493d33659dbdd5aeacf1e05e1094207cd0937f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/ComplexTaylorEnclosure.lean","GRWTSK/_verification/specifications/Analysis/ErrorBounds/ComplexTaylorEnclosure.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

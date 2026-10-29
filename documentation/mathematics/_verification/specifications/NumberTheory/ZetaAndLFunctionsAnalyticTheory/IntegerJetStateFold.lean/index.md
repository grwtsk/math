# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.IntegerJetStateFold

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84b7f4d4abae6784d683ba546afd9f0b9729e184",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/IntegerJetStateFold.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/IntegerJetStateFold.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/IntegerJetStateFold.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84b7f4d4abae6784d683ba546afd9f0b9729e184`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/IntegerJetStateFold.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/IntegerJetStateFold.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.IntegerExpStateFold`](../../../../../RealFunctions/IntegerExpStateFold.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalJetStateFold`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalJetStateFold.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powers](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/IntegerJetStateFold.lean/declarations/powers.md) | 23 | `declaration-track:510bf4239bfac45292e9e9897f9747e3c8f49fbc29ae9717d0f1882fc3dff140` |
| 2 | `theorem` | [powers_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/IntegerJetStateFold.lean/declarations/powers-eq.md) | 26 | `result-track:3ab409af1fe40890ad8fffc8674740b52d670ab299054c3281a4f6d76771b630` |
| 3 | `def` | [finiteJet](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/IntegerJetStateFold.lean/declarations/finitejet.md) | 32 | `declaration-track:f2e88d341abc618c627ea0d08fb82a6e837cf5008fcd4da3aadc64a7a331a74e` |
| 4 | `theorem` | [finiteJet_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/IntegerJetStateFold.lean/declarations/finitejet-eq.md) | 45 | `result-track:d7bc4c565a6921f36bc5d282cb3ddf68dc977f30f04084a4737ded8667cb934a` |
| 5 | `def` | [patch](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/IntegerJetStateFold.lean/declarations/patch.md) | 50 | `declaration-track:76f9114ef18347796a2ece2e9effa25c46236b2128b6f800c6575c7db1bf3885` |
| 6 | `theorem` | [patch_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/IntegerJetStateFold.lean/declarations/patch-eq.md) | 62 | `result-track:1aebf841191b5d452c7dd6a6b772ea442d8a6bbdc01abcc2590e361114b44c4a` |
| 7 | `theorem` | [patch_sound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/IntegerJetStateFold.lean/declarations/patch-sound.md) | 66 | `result-track:35ead57810df9697988f5ff20b6d9e25c6e63280b0ff397e1d63a45bba189bd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73deb79bf42f2abdc7138e541a69cf027975a2c68abbfa68c9f6b2d60dbde0d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/IntegerJetStateFold.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/IntegerJetStateFold.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

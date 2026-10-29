# Verification target: Source Attempt3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d607d93d9d3a2691557ac161e5fbbd3407046d3c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variantbc9fb60f51c4bc42b7892c03d128c37f911c188158cd89b08afdf46999cd106a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/SourceAttempt3.lean/index.md) · [Full source](../../../../RealFunctions/SourceAttempt3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d607d93d9d3a2691557ac161e5fbbd3407046d3c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variantbc9fb60f51c4bc42b7892c03d128c37f911c188158cd89b08afdf46999cd106a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variantbc9fb60f51c4bc42b7892c03d128c37f911c188158cd89b08afdf46999cd106a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../RealFunctions/SourceAttempt3.lean/declarations/p.md) | 15 | `declaration-track:be00e827d804da99faf2c7f23370af356a51c98e5371984e693dd78779d84c7a` |
| 2 | `abbrev` | [a](../../../../RealFunctions/SourceAttempt3.lean/declarations/a.md) | 16 | `declaration-track:e136a46f7e576d6a9ed7b174a09201e503e9a908d444c680030b5e9a27ba3314` |
| 3 | `def` | [firstTerm](../../../../RealFunctions/SourceAttempt3.lean/declarations/firstterm.md) | 18 | `declaration-track:0c4be685ded026c3e61da6e63d590743dfc3d7ee69f8d30a8e49b112788d47d8` |
| 4 | `def` | [secondTerm](../../../../RealFunctions/SourceAttempt3.lean/declarations/secondterm.md) | 20 | `declaration-track:2927030c3486960fb5db0bdb4675254ce6f36f31fd8546101caa92f3d8b94967` |
| 5 | `def` | [firstSeries](../../../../RealFunctions/SourceAttempt3.lean/declarations/firstseries.md) | 22 | `declaration-track:c04277b1f8e9abfd6ab8e6ef17fdb708c29f74d8fe1cb593a4704afdb8118080` |
| 6 | `def` | [secondSeries](../../../../RealFunctions/SourceAttempt3.lean/declarations/secondseries.md) | 24 | `declaration-track:666686bbe8a56fa170dcaab0578be6bab0f1566c3f4edb60fd60ded90c9b5daf` |
| 7 | `def` | [weight](../../../../RealFunctions/SourceAttempt3.lean/declarations/weight.md) | 26 | `declaration-track:b686f324fbc55b7ece36c80b94b8c365cddd113fd6c54575af441c2967ead4a9` |
| 8 | `theorem` | [weight_eq](../../../../RealFunctions/SourceAttempt3.lean/declarations/weight-eq.md) | 28 | `result-track:9e8c8d6d8b85ff614410aebd6b9fb7c02f8b5297e5c6f1e7539b4453c4e7699c` |
| 9 | `theorem` | [weight_summable](../../../../RealFunctions/SourceAttempt3.lean/declarations/weight-summable.md) | 33 | `result-track:2dd7a9a6f6b3b190ea9456ecd706aeca59490606214865a6e81b5ecfde4b1f52` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../RealFunctions/SourceAttempt3.lean/declarations/pairedterm-hasderivat.md) | 38 | `result-track:83fe5873d34d22fc1dd8d75db947fbb465aa78a6c5efc4a96d82d5274ee1ee13` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../RealFunctions/SourceAttempt3.lean/declarations/firstterm-hasderivat.md) | 55 | `result-track:93b2e2612cb88493ad7cc72c862d5c305926cc0d48367302f6c544d4544ce5d1` |
| 12 | `def` | [lowerCoefficient](../../../../RealFunctions/SourceAttempt3.lean/declarations/lowercoefficient.md) | 72 | `declaration-track:03d8ddd43559f057ec337208b9647e9432a3318ff8d60f135bb95a1e0103d0f2` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../RealFunctions/SourceAttempt3.lean/declarations/lowercoefficient-pos.md) | 74 | `result-track:7b0106985c4d5226692cc60beb24db42f761e15a241205897143d94b614e8773` |
| 14 | `theorem` | [rate_lower](../../../../RealFunctions/SourceAttempt3.lean/declarations/rate-lower.md) | 77 | `result-track:37f485e4f84694808c80689f2b5bb90ea6bf87129d96455d89d77f913b6b1bac` |
| 15 | `theorem` | [firstTerm_bound](../../../../RealFunctions/SourceAttempt3.lean/declarations/firstterm-bound.md) | 86 | `result-track:345b3c1ea25ae4b31fcbd15245305e546c14532b09a6cbcc319194803ecc76f1` |
| 16 | `theorem` | [secondTerm_bound](../../../../RealFunctions/SourceAttempt3.lean/declarations/secondterm-bound.md) | 115 | `result-track:23f43b440caf3f0afdc262bf7acf63e636e998ea3ee0c6c678df3901ae7b8e31` |
| 17 | `theorem` | [firstTerm_summable](../../../../RealFunctions/SourceAttempt3.lean/declarations/firstterm-summable.md) | 132 | `result-track:46756188bb00a38feaae9eab5053af6db14f35ee11597115f0937b145a0f7ddd` |
| 18 | `theorem` | [secondTerm_summable](../../../../RealFunctions/SourceAttempt3.lean/declarations/secondterm-summable.md) | 139 | `result-track:da7fccd02ab0231a78923d9d4af9919d3db218331e4a6a9b7246dd75958b92f0` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../RealFunctions/SourceAttempt3.lean/declarations/actualprofile-hasderivat.md) | 145 | `result-track:26103027d63c8ab8532ac534c6ba28b313615cf324ff191be4b98d26e9eb43b9` |
| 20 | `theorem` | [actualProfile_deriv](../../../../RealFunctions/SourceAttempt3.lean/declarations/actualprofile-deriv.md) | 160 | `result-track:1d7eccf7f04ec538a7b7870babed188fa9d2eb4cff2ce4dbd44549130ff68a17` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../RealFunctions/SourceAttempt3.lean/declarations/firstseries-hasderivat.md) | 163 | `result-track:eab84c42987fabd521755538db4d7a0bdb6bde81ad84be9c48991534f7cd7e98` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../RealFunctions/SourceAttempt3.lean/declarations/actualprofile-second-hasderivat.md) | 175 | `result-track:a45302670fcf46ec723d8a60b9ef426fc5723b269b0f9a2ab8d25586e0e2ff53` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../RealFunctions/SourceAttempt3.lean/declarations/actualprofile-second-deriv.md) | 181 | `result-track:c0dd6712eaad9b22e19dd65d7f1d768150755b5de12290d3e17952587cfb23d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc626b5b0c575292d7918ea2c74212e15ba462e488ac33528a0a9ff1dc171e09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variantbc9fb60f51c4bc42b7892c03d128c37f911c188158cd89b08afdf46999cd106a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variantbc9fb60f51c4bc42b7892c03d128c37f911c188158cd89b08afdf46999cd106a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

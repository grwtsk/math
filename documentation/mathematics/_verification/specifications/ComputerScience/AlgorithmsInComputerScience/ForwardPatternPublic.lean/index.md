# Verification target: Forward Pattern Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62ec44d69252e68c0540b8510bc4348fb4ae5be6",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variant28909e3cbd2c790235b48825c20c209804307f80b1cec67fb76c9dd272c98b6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62ec44d69252e68c0540b8510bc4348fb4ae5be6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variant28909e3cbd2c790235b48825c20c209804307f80b1cec67fb76c9dd272c98b6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variant28909e3cbd2c790235b48825c20c209804307f80b1cec67fb76c9dd272c98b6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Pattern.Pred` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Memcmp` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.ByteArray.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [startsWith_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/startswith-iff.md) | 23 | `result-track:2a24926d6151fd831b9fc7704d18eb0ee12f29ab14b9b5ee7e7f376effb8398e` |
| 2 | `theorem` | [skipPrefix?_eq_some_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/skipprefix-eq-some-iff.md) | 42 | `result-track:ba2529539c519481c30cd7ed918d99d7d3d7cbcc5f88dac00e6ba34ba920cee7` |
| 3 | `theorem` | [isSome_skipPrefix?](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/issome-skipprefix.md) | 61 | `result-track:e8ccce90a94b8d57306d7931a64293326b3cf750df2d637ec9202ae3f243175c` |
| 4 | `theorem` | [startsWith_of_isEmpty](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/startswith-of-isempty.md) | 64 | `result-track:efc04a8de9dd635ca4107e45c70d2250345455d93f2222d19712d55d1ba2a9bf` |
| 5 | `theorem` | [skipPrefix?_of_isEmpty](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/skipprefix-of-isempty.md) | 69 | `result-track:0977ec61c7aa7f029ca821d5721cdf49d5851e03f9f01b99256dc1941e692d30` |
| 6 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/instance-source-edition-2.md) | 79 | `declaration-track:57f5250db51d0a5f36b854393159fb8602c82276b50f3a43380ccb5e11dadd28` |
| 7 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/instance-source-edition-3.md) | 91 | `declaration-track:75daf47deb0908383b099b9119f04645f3977b2458d3dac8a9d65d7a96532508` |
| 8 | `theorem` | [endsWith_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/endswith-iff.md) | 101 | `result-track:3751ca3c3d0d8fc0f8becc0c04ac337718943bd0164432186e10c610707e886d` |
| 9 | `theorem` | [skipSuffix?_eq_some_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/skipsuffix-eq-some-iff.md) | 123 | `result-track:df214c375b5887c239b5059ae636a88631a12d8a05988b0445f0c3620379c727` |
| 10 | `theorem` | [isSome_skipSuffix?](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/issome-skipsuffix.md) | 152 | `result-track:24650b728ac32aab2aa1a01a57ec2b77417f0679ca089fc26dbed479880c7ce8` |
| 11 | `theorem` | [endsWith_of_isEmpty](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/endswith-of-isempty.md) | 155 | `result-track:484da17c1f87f7086b42190879529a8e29345b4937a3e285de3b024195fa7969` |
| 12 | `theorem` | [skipSuffix?_of_isEmpty](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/skipsuffix-of-isempty.md) | 160 | `result-track:6caead35659da33424700a6656d6f1fe84a8c28e5c2e51c24817c516225a9bef` |
| 13 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/instance.md) | 170 | `declaration-track:3b93b77665145282a55fdba1aaa8fc853b48686f74c45ecbe769682ec79a7e0e` |
| 14 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/instance-source-edition-4.md) | 183 | `declaration-track:8706f5ce03a14dbb5c8f1aff1cacc9ede830ff18c98a56a6e250db89a5ccc886` |
| 15 | `theorem` | [startsWith_string_eq_startsWith_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/startswith-string-eq-startswith-toslice.md) | 194 | `result-track:1098222bc7b6a13bce1e63f497c19541c6601acab8f61b7a58714daaf26635ab` |
| 16 | `theorem` | [dropPrefix?_string_eq_dropPrefix?_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/dropprefix-string-eq-dropprefix-toslice-source-edition-2.md) | 197 | `result-track:31a74a8bdf41d01143616c5d9e37fc951a8f4d4e5baabd46cadb85057398f803` |
| 17 | `theorem` | [dropPrefix_string_eq_dropPrefix_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/dropprefix-string-eq-dropprefix-toslice.md) | 200 | `result-track:26e847b9c44342807001fe29411811b58c7b0dcc3f106806403acd447b603539` |
| 18 | `theorem` | [skipPrefix?_string_eq_skipPrefix?_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/skipprefix-string-eq-skipprefix-toslice.md) | 203 | `result-track:76fd570946f044f7dbc23f5dda78f1845ff36cce4dc6185b66d4872fa4d64f92` |
| 19 | `theorem` | [Pattern.ForwardPattern.skipPrefix?_string_eq_skipPrefix?_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/pattern-forwardpattern-skipprefix-string-eq-skipprefix-toslice.md) | 206 | `result-track:74bc0813a169fbbc0238d4d96df717a5eba830768ff9e82c5e6c2abbb57108f3` |
| 20 | `theorem` | [Pos.skip?_string_eq_skip?_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/pos-skip-string-eq-skip-toslice.md) | 210 | `result-track:3e77176eadd6674732d5d49d8100e54b43b4fe8dd7af5bbc8a523572e3f156e8` |
| 21 | `theorem` | [Pos.skipWhile_string_eq_skipWhile_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/pos-skipwhile-string-eq-skipwhile-toslice.md) | 213 | `result-track:8613ed31b3210ec6a3adfeecd2e2662123f69e3f965f688b654899dca4975dad` |
| 22 | `theorem` | [skipPrefixWhile_string_eq_skipPrefixWhile_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/skipprefixwhile-string-eq-skipprefixwhile-toslice.md) | 227 | `result-track:384ca40a4d25019ed7b4ed978f5daad7e2a613e428452109ab146ffdb55ea2b1` |
| 23 | `theorem` | [dropWhile_string_eq_dropWhile_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/dropwhile-string-eq-dropwhile-toslice.md) | 231 | `result-track:5d04d63443fa756a0a3f41e1a967700f83226761b53ddbee6bd09d4d133c1c97` |
| 24 | `theorem` | [takeWhile_string_eq_takeWhile_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/takewhile-string-eq-takewhile-toslice.md) | 235 | `result-track:d9da4dab83319d96b851d675161a7bf0198849371b1893b10403a9e5db990ad8` |
| 25 | `theorem` | [all_string_eq_all_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/all-string-eq-all-toslice.md) | 239 | `result-track:8a6aca9c94af3e9023af11c4357b9f874e8a778a28f97c2507ee6c18204b7674` |
| 26 | `theorem` | [endsWith_string_eq_endsWith_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/endswith-string-eq-endswith-toslice.md) | 243 | `result-track:b86d269e5c79be19b053c8882ae89095d33a95fbc371fc89b695cfb4b84d0d09` |
| 27 | `theorem` | [skipSuffix?_string_eq_skipSuffix?_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/skipsuffix-string-eq-skipsuffix-toslice.md) | 246 | `result-track:ef01fd4f5f63b22812119f22f19a2feed39a000b953d951afd379ef77dc49be2` |
| 28 | `theorem` | [dropSuffix?_string_eq_dropSuffix?_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/dropsuffix-string-eq-dropsuffix-toslice-source-edition-2.md) | 249 | `result-track:2070737440b054e4c832c95fef8ec7cdefb60a73a0a20ebba2b98465792fbfc3` |
| 29 | `theorem` | [dropSuffix_string_eq_dropSuffix_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/dropsuffix-string-eq-dropsuffix-toslice.md) | 252 | `result-track:0617b4d7a6dbe430490cc8ff34238a7cdfcdbc8bd8cd70f34c9666507e875f4a` |
| 30 | `theorem` | [Pattern.BackwardPattern.skipSuffix?_string_eq_skipSuffix?_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/pattern-backwardpattern-skipsuffix-string-eq-skipsuffix-toslice.md) | 255 | `result-track:aaf81c0e391d9a4f256864483e1326b981ef38d3eab59efc34ac98fe8b56ba5f` |
| 31 | `theorem` | [Pos.revSkip?_string_eq_revSkip?_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/pos-revskip-string-eq-revskip-toslice.md) | 259 | `result-track:ae37792d6aaa53d2f0db40b2b7de11186ba2cd2c26ee6e11d8b258578d228f32` |
| 32 | `theorem` | [Pos.revSkipWhile_string_eq_revSkipWhile_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/pos-revskipwhile-string-eq-revskipwhile-toslice.md) | 262 | `result-track:5fe224d5dbc09c3b4fe67377ce472e88835e9ba048d3c9c58cab26fe583a6fec` |
| 33 | `theorem` | [skipSuffixWhile_string_eq_skipSuffixWhile_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/skipsuffixwhile-string-eq-skipsuffixwhile-toslice.md) | 276 | `result-track:372e5f034deb8564a2f1e02b667a8bc774406dd12ff5f0142dc9ee3540a50037` |
| 34 | `theorem` | [dropEndWhile_string_eq_dropEndWhile_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/dropendwhile-string-eq-dropendwhile-toslice.md) | 280 | `result-track:264081d4ade8f77cdb9cee62f495d0af9c8959bdb87aaf65827e969775804e78` |
| 35 | `theorem` | [takeEndWhile_string_eq_takeEndWhile_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/takeendwhile-string-eq-takeendwhile-toslice.md) | 284 | `result-track:4e54ac44acfcd0b6adb8203850b854e8dde910681882c3ee2a05c5ed0b1fbda7` |
| 36 | `theorem` | [revAll_string_eq_revAll_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardPatternPublic.lean/declarations/revall-string-eq-revall-toslice.md) | 288 | `result-track:7896734153d0b10a5936eef01730f9aa44d0b4f5366389644e5520d3408a30bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ccd5d760e53d9274620454e8d00a2c74d3039299cd439d867e4b0f4c3b89c351 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variant28909e3cbd2c790235b48825c20c209804307f80b1cec67fb76c9dd272c98b6f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardPattern/Variant28909e3cbd2c790235b48825c20c209804307f80b1cec67fb76c9dd272c98b6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

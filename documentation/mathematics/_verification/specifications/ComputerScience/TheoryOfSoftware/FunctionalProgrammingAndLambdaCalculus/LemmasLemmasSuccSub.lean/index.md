# Verification target: Lemmas Lemmas Succ Sub

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20876de423e5158faa7cb806d10d66b0bc951df8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48e8eab4c2d81b100ff2b9842262065ffae4ffc2bdf388d5da4fc0c240965d17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20876de423e5158faa7cb806d10d66b0bc951df8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48e8eab4c2d81b100ff2b9842262065ffae4ffc2bdf388d5da4fc0c240965d17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48e8eab4c2d81b100ff2b9842262065ffae4ffc2bdf388d5da4fc0c240965d17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Logic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [succ_sub](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/succ-sub.md) | 10 | `result-track:7dc85208630fd6e7c49f54ceea4d174cfc81fc2677b9569edb1933aad9cb920f` |
| 2 | `theorem` | [sub_le_sub_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/sub-le-sub-right.md) | 14 | `result-track:a92d65f85c5bea9d50e0891f6bc9aec91fef1343f2eca82777dbd1b88673613e` |
| 3 | `theorem` | [sub_lt_left_of_lt_add](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/sub-lt-left-of-lt-add.md) | 18 | `result-track:7527fba78b9ab0330cbabef0fd8c5cff94e1e4b47edae3cd6f5ff52e88a2c54f` |
| 4 | `theorem` | [sub_lt_right_of_lt_add](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/sub-lt-right-of-lt-add.md) | 22 | `result-track:7faaf5a4540c0686e31220b6b56868a332a475ff02d34cd36c5601e5b4b1fce6` |
| 5 | `theorem` | [pos_of_ne_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/pos-of-ne-zero.md) | 25 | `result-track:e7a91c04ecf3811036d72564aae8c3964e313d05e108e5691c5b73127b73af47` |
| 6 | `theorem` | [min_eq_min](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/min-eq-min.md) | 27 | `result-track:2a511a2498e65a94529b5df2f3341f690800353b2ca71ce7d294732f92594788` |
| 7 | `theorem` | [max_eq_max](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/max-eq-max.md) | 29 | `result-track:72545600ea97444f1ed10e72a95a9d9656e5e02cb87a4a3bfb0575cb9ff1c5d2` |
| 8 | `theorem` | [min_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/min-comm.md) | 31 | `result-track:b5329b6d6d857cde24c6884fcaee28ca49d95eafaf3b5f3930399ba30e7d4c6d` |
| 9 | `theorem` | [min_le_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/min-le-right.md) | 36 | `result-track:d3e5968312cbad3ab275f3104afe3e08c343e7157106a1858dc11054b27d1e54` |
| 10 | `theorem` | [min_le_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/min-le-left.md) | 38 | `result-track:6d46d8f8cff141bfad94cf19008b80ea934d11e8393b13cfb90966d6383d6c5f` |
| 11 | `theorem` | [min_eq_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/min-eq-left.md) | 40 | `result-track:a31aac03b3eab3c9c2d244380e5238d4cb87f6e752e8567b1920f180f4d35a83` |
| 12 | `theorem` | [min_eq_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/min-eq-right.md) | 42 | `result-track:2d33087044ea2c3f11c4eeb8403fe65aa5a9b13b4462a3319b5a9d888c047430` |
| 13 | `theorem` | [max_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/max-comm.md) | 45 | `result-track:f59be75b7088fe609409594d91dd24c7a85ffee50618d80086ce348b0f762338` |
| 14 | `theorem` | [le_max_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/le-max-left.md) | 51 | `result-track:4dbc26bb3a9cfed8db75b72818246af0e191473137e0088937a931b430267163` |
| 15 | `theorem` | [le_max_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/le-max-right.md) | 53 | `result-track:042e6c796857e789551a690f82489714dc02f4708a0b0bd62de64471d4b96fa6` |
| 16 | `theorem` | [pow_two_pos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/pow-two-pos.md) | 55 | `result-track:aececf47c7e2d9c959c42294441a9ab5ee2a87e1cb0b67bf7dca571fe11c3035` |
| 17 | `theorem` | [not_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/not-le.md) | 57 | `result-track:7223ca97a7471f5b42425f286b1e3672b00abc2cc560572b0b595e96ff1e178c` |
| 18 | `theorem` | [not_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/not-lt.md) | 60 | `result-track:10dcd3c3ea55f590da5d51af5785676c82f398e9f492efcd6dafa5157b22bcb6` |
| 19 | `theorem` | [le_min_of_le_of_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/le-min-of-le-of-le.md) | 63 | `result-track:6d00a049cef1db27fc650aa816d5969571bd4859a479eafead73d0c262fe2587` |
| 20 | `theorem` | [le_min](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/le-min.md) | 68 | `result-track:edc6fbb01da6cf9c7f12a65c69b31abdeea314572f8fbab26445e8818fb55ee6` |
| 21 | `theorem` | [lt_min](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasSuccSub.lean/declarations/lt-min.md) | 72 | `result-track:a59f40b0c1b9e20a4920efd9cd649101c5f18c666637811e9652c30a4f41d16b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56a2b762ad1c4950063026509ec53a000cf694d2aaced5ea0b5dc7bc2999fda6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48e8eab4c2d81b100ff2b9842262065ffae4ffc2bdf388d5da4fc0c240965d17.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant48e8eab4c2d81b100ff2b9842262065ffae4ffc2bdf388d5da4fc0c240965d17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

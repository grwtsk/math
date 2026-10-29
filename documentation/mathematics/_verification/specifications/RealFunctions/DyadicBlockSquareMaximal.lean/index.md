# Verification target: GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b18f90584b0f3e181a90fe40dd127c04fc20d844",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/index.md) · [Full source](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b18f90584b0f3e181a90fe40dd127c04fc20d844`.

Source path: `GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finitePrefixSum](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/finiteprefixsum.md) | 41 | `declaration-track:072a23d1a062128c7dcbc66955d14c94ce2f4724779455f7762fda1e0f9b5745` |
| 2 | `def` | [shiftedSequence](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/shiftedsequence.md) | 45 | `declaration-track:448a63a6f9973b97019bd7386ec80bed5065d0cc47bd5d1263315126adf60178` |
| 3 | `def` | [alignedDyadicBlockSum](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/aligneddyadicblocksum.md) | 50 | `declaration-track:0585a98c2efd503dfd4909ea076a7fdbdb955bbefc9bdaaec0d10055110b1f30` |
| 4 | `def` | [dyadicTreeSquareEnergy](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/dyadictreesquareenergy.md) | 62 | `declaration-track:2d97ff30c2d0e88d6f766cba1efe7815e535139441cc5cda4cee6d1e1efb5f0d` |
| 5 | `def` | [dyadicLevelCount](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/dyadiclevelcount.md) | 71 | `declaration-track:9bec79fd850bacdb85386dcc9195af8604700f5eb34cf677656ce2b0b8d19d6a` |
| 6 | `def` | [dyadicPrefixMaximum](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/dyadicprefixmaximum.md) | 76 | `declaration-track:d149a22d7c6d5c9bcaaeda4d888859006c048b4122dd2d71bc48c118c9b26fa4` |
| 7 | `theorem` | [finitePrefixSum_zero](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/finiteprefixsum-zero.md) | 79 | `result-track:40264b108ca8c4cd15c1ea1700fc7da67b1b4b04f6abd5079144941b2f36bd5d` |
| 8 | `theorem` | [finitePrefixSum_one](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/finiteprefixsum-one.md) | 83 | `result-track:3b071c4687c098dc0711e1a1ba3fdfb31c467ce369b43e15698575c128f65692` |
| 9 | `theorem` | [finitePrefixSum_add](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/finiteprefixsum-add.md) | 88 | `result-track:2228b63705f20321a1e504a89e1c322e7558f9b7e232fdfc2e5ea73a2625fe24` |
| 10 | `theorem` | [alignedDyadicBlockSum_zero_index](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/aligneddyadicblocksum-zero-index.md) | 93 | `result-track:48505c0b5934d4c39fbffbd7610c25d2e02d1ebb3720482cc126ae1708a72950` |
| 11 | `theorem` | [dyadicLevelCount_eq](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/dyadiclevelcount-eq.md) | 98 | `result-track:4b2176addb44246c1ae4ccfc16e646e3e9847b74d1806848b8775d16116c8c9f` |
| 12 | `theorem` | [dyadicLevelCount_pos](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/dyadiclevelcount-pos.md) | 106 | `result-track:3ea89e7dc852f43f80157425ccc8f3a2546a02a0e0e1f190ff5b49788ed86238` |
| 13 | `theorem` | [dyadicTreeSquareEnergy_nonneg](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/dyadictreesquareenergy-nonneg.md) | 112 | `result-track:6f0aa2c0fcb800839230f84d757ba0810e206200c42338148ad856b89b724112` |
| 14 | `theorem` | [alignedTopBlock_sq_le_dyadicTreeSquareEnergy](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/alignedtopblock-sq-le-dyadictreesquareenergy.md) | 127 | `result-track:f76e2cfa09271000542301820ae84c73a0c556017befae5ee85a21cad5612512` |
| 15 | `theorem` | [add_sq_le_succ_weight](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/add-sq-le-succ-weight.md) | 143 | `result-track:3b850689d7b87d936a670fbd4a37763be9b457bea7b2ed10bf74860243ac4ef5` |
| 16 | `theorem` | [finitePrefixSum_sq_le_dyadicTreeSquareEnergy_aux](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/finiteprefixsum-sq-le-dyadictreesquareenergy-aux.md) | 157 | `result-track:b058b183b81ed66202781d0a56d905de37aeb7ff72841d39a698d25ea029b938` |
| 17 | `theorem` | [finitePrefixSum_sq_le_dyadicTreeSquareEnergy](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/finiteprefixsum-sq-le-dyadictreesquareenergy.md) | 261 | `result-track:792a27e9ee02e7375b3a7a8fdc71869d29becbdb786bbef2b9b8e79afc277d5a` |
| 18 | `theorem` | [dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/dyadicprefixmaximum-sq-le-dyadictreesquareenergy.md) | 269 | `result-track:0b3f3f54244d3cacae670b7fd6d944c2ac50bd023f2c5ec74f6c3014c6163408` |
| 19 | `theorem` | [dyadicTreeSquareEnergy_zero](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/dyadictreesquareenergy-zero.md) | 302 | `result-track:4389d43ee7b9988111253ea50fb2fdefefd04875a58814bf0803e1363c6df6ec` |
| 20 | `theorem` | [dyadicTreeSquareEnergy_one](../../../../RealFunctions/DyadicBlockSquareMaximal.lean/declarations/dyadictreesquareenergy-one.md) | 309 | `result-track:7416deab32c31b5bf7bfb38b5f5d476439e0a422deca6e688c02f30afbcde210` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=489535de2e759daf9891673c474a0660af52bd0644fee18b6008015453c94e7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean","GRWTSK/_verification/specifications/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

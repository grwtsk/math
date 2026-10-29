# Verification target: Cpop Public Denote Blast Extract And Extend Bit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1812ff626310aec0f5bcd39aac1cb04d417fdb5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CpopPublicDenoteBlastExtractAndExtendBit.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CpopPublicDenoteBlastExtractAndExtendBit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1812ff626310aec0f5bcd39aac1cb04d417fdb5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.BitVec.Bootstrap` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [denote_blastExtractAndExtendBit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CpopPublicDenoteBlastExtractAndExtendBit.lean/declarations/denote-blastextractandextendbit.md) | 37 | `result-track:0491e870a95db23d72349f5a5b441794ec51927d4324e8a99980b585e80f40bc` |
| 2 | `theorem` | [blastExtractAndExtendBit_denote_mem_prefix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CpopPublicDenoteBlastExtractAndExtendBit.lean/declarations/blastextractandextendbit-denote-mem-prefix.md) | 58 | `result-track:5976bdbd465dff7f7134aeb3ba921687aa4573e85dd39550ffe3a3f7895286fd` |
| 3 | `theorem` | [denote_append_blastExtractAndExtendBit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CpopPublicDenoteBlastExtractAndExtendBit.lean/declarations/denote-append-blastextractandextendbit.md) | 73 | `result-track:dd10f3ccad36ab8ad676cd14a74164aba1f4dc19b22503385788b9d02e44b48d` |
| 4 | `theorem` | [denote_blastExtractAndExtend.go](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CpopPublicDenoteBlastExtractAndExtendBit.lean/declarations/denote-blastextractandextend-go.md) | 100 | `result-track:0cd02fbfca83db6747502a64d8d6e57e1674f506b7c1f2114f6253fdb413aabe` |
| 5 | `theorem` | [denote_blastExtractAndExtend](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CpopPublicDenoteBlastExtractAndExtendBit.lean/declarations/denote-blastextractandextend.md) | 129 | `result-track:a9352957236a9ec1176681e08d5794d6a199b6d2fd9bda863a55b0b4d5197803` |
| 6 | `theorem` | [denote_blastCpopLayer.go](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CpopPublicDenoteBlastExtractAndExtendBit.lean/declarations/denote-blastcpoplayer-go.md) | 143 | `result-track:ba4dc8e6a49dde85c30e70ea6da757f482c1806c1f98cf44d07831ebe4a7d697` |
| 7 | `theorem` | [denote_blastCpopLayer](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CpopPublicDenoteBlastExtractAndExtendBit.lean/declarations/denote-blastcpoplayer.md) | 218 | `result-track:4fc147c86aa309a988f2cfa75025610d206fb505c75e8dab564433455dfe18bb` |
| 8 | `theorem` | [blastCpopLayer_denote_mem_prefix.go](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CpopPublicDenoteBlastExtractAndExtendBit.lean/declarations/blastcpoplayer-denote-mem-prefix-go.md) | 236 | `result-track:f957283509422a2ed54ab1c3af4d1780ef1489f04469b02d2a1af0f621d1b4ee` |
| 9 | `theorem` | [denote_blastCpopTree.go](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CpopPublicDenoteBlastExtractAndExtendBit.lean/declarations/denote-blastcpoptree-go.md) | 251 | `result-track:e52ef403aafdc82426a33125d3c6ee7d999a1a77795d376d25de06c3e3ff707d` |
| 10 | `theorem` | [denote_blastCpopTree](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CpopPublicDenoteBlastExtractAndExtendBit.lean/declarations/denote-blastcpoptree.md) | 285 | `result-track:4e1876c4c029193800ac9f47e2804da9ebb8ea1dea29d0d7b128e8d904ffdc06` |
| 11 | `theorem` | [denote_blastCpop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CpopPublicDenoteBlastExtractAndExtendBit.lean/declarations/denote-blastcpop.md) | 299 | `result-track:2022b1a0fd64527187d55c24f5f61f2c12a2776dc1c80e3c9ee3158959932e81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98cc42a7594d5df013528d85db265662e1719fc374955e19c6d75b591a0d0f6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantdd227fef800a0e25307a169fb4d413f807c8e32e700c48a901012fa6838dc4b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

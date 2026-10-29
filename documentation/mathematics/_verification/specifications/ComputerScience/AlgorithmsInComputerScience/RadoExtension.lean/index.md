# Verification target: Rado Extension

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fe754537d5de1f2253522a63e02d5f1fcbf4a0e",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e/Variant0536e4942ca955d6c630f21e98149dacda52e89341719028062229a8e656fbcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fe754537d5de1f2253522a63e02d5f1fcbf4a0e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e/Variant0536e4942ca955d6c630f21e98149dacda52e89341719028062229a8e656fbcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e/Variant0536e4942ca955d6c630f21e98149dacda52e89341719028062229a8e656fbcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std` — import line 1; external provider; requires a separately pinned dependency.
- `Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.Bit0.Bit0.M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616e` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxList](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/maxlist.md) | 20 | `declaration-track:71e3ee79b39964aea485e48aa6d0248fc48e2f2f7e7ca9f9f3e4fba1df19061b` |
| 2 | `theorem` | [mem_le_maxList](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/mem-le-maxlist.md) | 24 | `result-track:a566d0f27af9103c378b9afa7e8653228c039b0c1491d8b28817e3e50514bcfe` |
| 3 | `def` | [bitset](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/bitset.md) | 35 | `declaration-track:9805f2d9af3a6b212ab43e610bf2d6cb7e30b4d86f240ada05db5c749ca6d12d` |
| 4 | `theorem` | [bitset_testBit_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/bitset-testbit-of-mem.md) | 39 | `result-track:5906c4e4c60a3a46c44542c7d25b7999538bbf09f340b193c9efc15447634e1f` |
| 5 | `theorem` | [bitset_testBit_of_not_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/bitset-testbit-of-not-mem.md) | 50 | `result-track:525bf20e9659bcd6cbef248e5dc76ba815a07f03ad39e36e855c68666b690fcb` |
| 6 | `abbrev` | [DisjointNatLists](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/disjointnatlists.md) | 62 | `declaration-track:466092e04619b878be4f77b3ad607f5a54b3ec06c99b9ab3eda30a5762d3c945` |
| 7 | `def` | [freshBound](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/freshbound.md) | 65 | `declaration-track:dd93ef2ccf4be8651ca9c430386cce16ba55e54db59873ec9f1bfda4dc00efae` |
| 8 | `def` | [freshHeight](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/freshheight.md) | 68 | `declaration-track:cf1eb1a48b68a470ce117a728261249d07faa838d2da761b29a3799de6761e7e` |
| 9 | `def` | [freshWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/freshwitness.md) | 71 | `declaration-track:efea7a3b184f18593b82ac921d654d016838e9cedd65399baa4f503c80420e05` |
| 10 | `theorem` | [fresh_high_bit](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/fresh-high-bit.md) | 74 | `result-track:3dc088daeddd1a63be72bdae8c917eb8ebab7f927a1db0a774d995d50d5ba3cc` |
| 11 | `theorem` | [freshWitness_ge_highPow](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/freshwitness-ge-highpow.md) | 78 | `result-track:5c21e1648436199d335707e18c9751c09a49dbff59028a9fe894948eb6e33691` |
| 12 | `theorem` | [bound_lt_highPow](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/bound-lt-highpow.md) | 91 | `result-track:350c21933b05e725c86768c2ed773088ba9b55ed20781322ae2e9276152d2f6b` |
| 13 | `theorem` | [mem_lt_freshWitness_left](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/mem-lt-freshwitness-left.md) | 99 | `result-track:dc7f82d2b27b509ed22b318603f819492cf87ac8a040e6888ca825d64ea68576` |
| 14 | `theorem` | [mem_lt_freshWitness_right](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/mem-lt-freshwitness-right.md) | 109 | `result-track:e0bafa5bb9b19327909e2c0c41542ccb3793fe827b049ae35105ac0eca25f669` |
| 15 | `theorem` | [freshWitness_not_mem_left](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/freshwitness-not-mem-left.md) | 119 | `result-track:6247b77d0432628c199d955915e02842160693bf99b398d7b0e882665438e67e` |
| 16 | `theorem` | [freshWitness_not_mem_right](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/freshwitness-not-mem-right.md) | 124 | `result-track:1a0518206d020930b09e0ee416e956480bdbf66fdaba0d15f0874cddf175c75e` |
| 17 | `theorem` | [freshWitness_testBit_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/freshwitness-testbit-of-mem.md) | 129 | `result-track:c2c492ccd3045bd3b24b060c8282e96cdf86d0fa092a87adcf9cad06b77fd051` |
| 18 | `theorem` | [freshWitness_testBit_of_avoid](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/freshwitness-testbit-of-avoid.md) | 134 | `result-track:c24544c4c5474b496492cbbb2537f7be519546a610889a0f069e79bc248b5d4e` |
| 19 | `def` | [bitRadoEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/bitradoedge.md) | 149 | `declaration-track:262f9962e552d634ca229d21fd576a541f51c8352d0887f0a0be7b4efaa9aae7` |
| 20 | `theorem` | [bitRadoEdge_irreflexive](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/bitradoedge-irreflexive.md) | 153 | `result-track:4aa1058839794fcdfdd38236902d6de514d2eec7fd6afb8bf25b772e62c9b758` |
| 21 | `theorem` | [bitRadoEdge_symmetric](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/bitradoedge-symmetric.md) | 160 | `result-track:e55dce9c8c891dccc58f75cbb8f343edb6d00461a2ab2dfe19d1c1ac17fce702` |
| 22 | `def` | [bitRadoGraph](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/bitradograph.md) | 167 | `declaration-track:109c7882a203d38b6672627da306ec1c2b392c019962df4c754ee692c65a887c` |
| 23 | `theorem` | [bitRado_finite_extension](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/bitrado-finite-extension.md) | 170 | `result-track:23280419f26809468eea50862e3d7ae548e8ae43f0cbd9d84cb7c36240431285` |
| 24 | `theorem` | [bitRado_extensionProperty](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/bitrado-extensionproperty.md) | 195 | `result-track:259d60cd2db2db7097f2fcb03d023aaaae3fb9dd0538a05c0d1894f54b6b107e` |
| 25 | `def` | [bitRadoExtensionFormalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/bitradoextensionformaltheorem.md) | 202 | `declaration-track:3eba331b8ccd13539a8aed7ed27a1cb69072758203e0eb39639e97d096c6576d` |
| 26 | `theorem` | [bitRadoExtensionFormalTheorem_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/bitradoextensionformaltheorem-complete.md) | 212 | `result-track:fa1361d43f23c1ddabd56b0e9c8b907a9e908c9290cbe552ea1094f49122d324` |
| 27 | `theorem` | [bitRadoExtensionFormalTheorem_has_no_residue](../../../../../ComputerScience/AlgorithmsInComputerScience/RadoExtension.lean/declarations/bitradoextensionformaltheorem-has-no-residue.md) | 216 | `result-track:10cdbb03edd83507062b6465da46927e04a03bb173e7f4cfd0a53ed1e269feb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9188d0b894f32c3a60988461cc25b078e2804c3540a6335cd161c0a1ae9a7903 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e/Variant0536e4942ca955d6c630f21e98149dacda52e89341719028062229a8e656fbcf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e/Variant0536e4942ca955d6c630f21e98149dacda52e89341719028062229a8e656fbcf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

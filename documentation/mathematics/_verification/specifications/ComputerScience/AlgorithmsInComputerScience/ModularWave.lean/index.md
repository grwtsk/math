# Verification target: Modular Wave

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ae49f28544a8f52f3a28f55657ea07833511089",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModularWave/Variant5097df3d4ff611f9f28cfb12fd637a033cf5eae708f66624666e14b6877c50ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ae49f28544a8f52f3a28f55657ea07833511089`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModularWave/Variant5097df3d4ff611f9f28cfb12fd637a033cf5eae708f66624666e14b6877c50ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModularWave/Variant5097df3d4ff611f9f28cfb12fd637a033cf5eae708f66624666e14b6877c50ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kernel.Checked` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Stage](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/stage.md) | 15 | `declaration-track:760a1724f591095cc139d07a46777d9a4cf11c73c90fd46452c7e22326f88c20` |
| 2 | `def` | [lowerToBit](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/lowertobit.md) | 33 | `declaration-track:8d1fa8baab068d25fec068775a44474ca2aeb6eef282faac58aa1d8b3ae15a36` |
| 3 | `def` | [publicTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/publictrace.md) | 36 | `declaration-track:42b9542d46ec35936df5f4217e568977ec7bb902afc02448cd6695113debd6b7` |
| 4 | `def` | [publicCompact](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/publiccompact.md) | 39 | `declaration-track:ffb5b4658cc18528107571f3fae0220228bbb2ba4f4a5d99876c7852a8ece75b` |
| 5 | `def` | [orderedPoleStream](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/orderedpolestream.md) | 42 | `declaration-track:e01e3b9502f0b465c609ccc62413bcb8c18c77f8683f2e3d48ea980c9abab28b` |
| 6 | `structure` | [PublicWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/publicwitness.md) | 47 | `declaration-track:706a20126a4642415e6b8a7e4b988d15992e75c1de921a56319305fc5109864b` |
| 7 | `def` | [makePublicWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/makepublicwitness.md) | 53 | `declaration-track:49dc63dd1fccebaf8d15201a420f57986e5f93ebfbc52aed717ff4c6518203ca` |
| 8 | `def` | [coherentProjectionClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/coherentprojectionclaim.md) | 59 | `declaration-track:35e9e8f3790148d4a25128f0f4e3b15fa0231f5706bd2552a3a89a2c9ce48b3e` |
| 9 | `theorem` | [coherentProjection](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/coherentprojection.md) | 67 | `result-track:0501e6b8a012bfc990e1f7f0ffd48633b5bb0105d4a2e7f7b2806bd787f4ffd5` |
| 10 | `def` | [finiteModularWaveWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/finitemodularwavewitness.md) | 72 | `declaration-track:a7d48ba2554edfd51fb9841a62b738a4f9bc1b76d42e7408e57abc7e9d51cb64` |
| 11 | `theorem` | [finiteModularWaveWitness_isProved](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/finitemodularwavewitness-isproved.md) | 76 | `result-track:753234f69f159923903b9bd5866c406e0ca8b14f2953578221f337fd5948ea39` |
| 12 | `structure` | [Attempt](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/attempt.md) | 80 | `declaration-track:097c5dc3fec403e14f57d59d63f3108da526dee6973ebedb44652dc491a8628e` |
| 13 | `structure` | [Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/valid.md) | 92 | `declaration-track:fc7143a3e00416f092dd4471a3ed64f68ea63fb02280a38c7ca68cfa3c424dc2` |
| 14 | `inductive` | [Atom](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/atom.md) | 102 | `declaration-track:84df1a0b53299ef272af7f4ceff46e1d07b58b7ca0090cbd166395d08c776d8a` |
| 15 | `def` | [Atom.id](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/atom-id.md) | 115 | `declaration-track:32a62a30248c346dee46d4227551df9e65b307fe1d9313dc47d43150a8a7bc91` |
| 16 | `def` | [atomResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/atomresidue.md) | 127 | `declaration-track:262fb0fbabf131f384ff2522046eafa40a04a255c4f4a934592fe431e2d741ae` |
| 17 | `def` | [allAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/allatoms.md) | 145 | `declaration-track:0af8298cea013c97dd6c22856e9a4e713c84d046bd804022aca16d13a07324ec` |
| 18 | `def` | [residues](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/residues.md) | 158 | `declaration-track:6423a2aab5600143e32962fd577199f0561e40f835e27028a2b0c90177e9d75e` |
| 19 | `def` | [validate](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/validate.md) | 161 | `declaration-track:d7464ba00b1375b37fa104274d9d5a7a5d73dba7653a3e5502e289ee07a0583c` |
| 20 | `theorem` | [validate_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/validate-hasresidue.md) | 164 | `result-track:8c3c3703272c7ca529d00f692509ebcb9cd7b6fe6ff032d64e787f38fb609210` |
| 21 | `theorem` | [residues_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/residues-count.md) | 168 | `result-track:203ec6d74343ce5216b8c138256d3508a0c3f961da10fcc757ca6ba7e984b1f0` |
| 22 | `theorem` | [residues_targets_correct](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/residues-targets-correct.md) | 172 | `result-track:ce9f0b5e6da433fba5a46d55b5fd69271d8c4674cb9190e2515a727f4e05c613` |
| 23 | `theorem` | [allAtoms_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/allatoms-nodup.md) | 179 | `result-track:0041ea29ec88ad5b505fdbd382e265b23c3da9fca230a25578ad1e062a3e3e6b` |
| 24 | `theorem` | [atomId_injective](../../../../../ComputerScience/AlgorithmsInComputerScience/ModularWave.lean/declarations/atomid-injective.md) | 183 | `result-track:c3332bd199890aac694a3eaf8a9227fd05acfdfead09f941ee59288f74297c9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ed4a86a6bcd7aa88e544566aea08d2c4508857106319ec61bc729317c0dc927 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModularWave/Variant5097df3d4ff611f9f28cfb12fd637a033cf5eae708f66624666e14b6877c50ef.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ModularWave/Variant5097df3d4ff611f9f28cfb12fd637a033cf5eae708f66624666e14b6877c50ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

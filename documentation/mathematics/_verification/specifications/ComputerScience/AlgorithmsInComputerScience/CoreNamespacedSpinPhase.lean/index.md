# Verification target: Core Namespaced Spin Phase

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acb644e123a15f2f066039b81054eee18cde4f3a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2c2faca1da6046319348a7ed92327a81a043181aa329a41e90e152b9828d1f52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acb644e123a15f2f066039b81054eee18cde4f3a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2c2faca1da6046319348a7ed92327a81a043181aa329a41e90e152b9828d1f52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2c2faca1da6046319348a7ed92327a81a043181aa329a41e90e152b9828d1f52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SpinPhase](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/spinphase.md) | 19 | `declaration-track:299c884edc5676180e99f166a6cce965695f8485bf02fafea94acef40dadf513` |
| 2 | `def` | [SpinPhase.weight](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/spinphase-weight.md) | 26 | `declaration-track:5abc8d3bba5943e03acb20dbf221f1b0a6748276166dbff3de9cc02fe6c0c279` |
| 3 | `theorem` | [SpinPhase.weight_null](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/spinphase-weight-null.md) | 32 | `result-track:5291fb0311ee0e7f6fafa22b04fc2d401dc762878fd148ef1055c6c0809483c5` |
| 4 | `theorem` | [SpinPhase.weight_unit](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/spinphase-weight-unit.md) | 35 | `result-track:f634885f04857bb35ed1e83dd9c1b349a08b7472c1947116b0482587444f7b5c` |
| 5 | `theorem` | [SpinPhase.weight_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/spinphase-weight-zero.md) | 38 | `result-track:fb42b06f568e2b0ea5268fedcc3e78663c6291a2ffa675a69f44ae6fd14e005b` |
| 6 | `theorem` | [SpinPhase.weight_twist](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/spinphase-weight-twist.md) | 41 | `result-track:b6d3a9655d64e9e85ef1f90447cd42f6960d9ae579616e20f22c870478014024` |
| 7 | `structure` | [FormalMathString](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/formalmathstring.md) | 49 | `declaration-track:ff97f5cf179cb536f7890bb748a1827269d894ca0e3f4b549202547cd1c86367` |
| 8 | `def` | [length](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/length.md) | 57 | `declaration-track:0faa9134e6f32efa6a50cbc3be4a4950fda4d7077c8b9d9498693e0a181c3ef6` |
| 9 | `def` | [empty](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/empty.md) | 60 | `declaration-track:ba364322fd0864713e985f46ea123059a5024b2a1dc4debfde4db1ddcb4821ed` |
| 10 | `def` | [singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/singleton.md) | 63 | `declaration-track:dcbf875cfabbb284e00206c407d0f90d8e1322340ef22fa6e27fd28fe842582c` |
| 11 | `def` | [append](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/append.md) | 66 | `declaration-track:e7549fd2325170c2acf39f90eb153b19596ac387b27fe02cd034317ab10dccf4` |
| 12 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/instance.md) | 69 | `declaration-track:223e17031e5390ebbde3076a023530c2295785106c29ee17f1b676951bc3fb0d` |
| 13 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/instance-source-edition-2.md) | 72 | `declaration-track:ff733e091c10c3b6b432385447c5541a7ef252f7cb8a3de4a512658953a8a0ad` |
| 14 | `theorem` | [length_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/length-empty.md) | 75 | `result-track:26342ffb481c0f9d15c96ec897f59a5483566df81a879019db60a43a15990373` |
| 15 | `theorem` | [length_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/length-singleton.md) | 78 | `result-track:6ef53aa04cf5e89a2ff35f034604b6e77e0fa99852dabee9315b2a471e58b98d` |
| 16 | `theorem` | [length_append](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/length-append.md) | 81 | `result-track:97cf3a319929cf9efa486bd2e531a7db7e52f919fa4f05ef919a31c533f87147` |
| 17 | `theorem` | [append_assoc](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/append-assoc.md) | 90 | `result-track:b1141677557e9a656d7adb1a13bd9fb5851145c19dbfb949862eaa620e10e6fc` |
| 18 | `theorem` | [empty_append](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/empty-append.md) | 102 | `result-track:ace0ae3cf9c0bed2a13c853616313494b63aa82f4d4fc6979f04bc2aaee2fe3a` |
| 19 | `theorem` | [append_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/append-empty.md) | 109 | `result-track:142ce10318fbcd90c007bf27b05de7b804864c1ff129b972b73136eb44774f84` |
| 20 | `theorem` | [induction_on_symbols](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/induction-on-symbols.md) | 122 | `result-track:f6476b6626fef599dbb227f7998e46f240672aee83efc3999644ba6e17beb8d7` |
| 21 | `structure` | [MacroDictionary](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/macrodictionary.md) | 146 | `declaration-track:06577cab1e4cf949e5d1fe30eeabd9708794865ccd3e63eafb6f0483fb2e9e7c` |
| 22 | `def` | [macroCount](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/macrocount.md) | 155 | `declaration-track:bf9eca9693266a539c44d54f6f57803cacc0da2560f1556b0ff9f04cc8f82b34` |
| 23 | `def` | [hasNoMacros](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/hasnomacros.md) | 158 | `declaration-track:e0d9e3f4435f1ee5d75c447b7769bcb62fd3cf65c3735759f694281da13a2c46` |
| 24 | `theorem` | [macroCount_eq_zero_of_hasNoMacros](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/macrocount-eq-zero-of-hasnomacros.md) | 161 | `result-track:c62ccdf28e17d73cac3c35e9c7c4ca74dc05ef66e6b33b34ca99327c17f099fd` |
| 25 | `inductive` | [CompressedSymbol](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/compressedsymbol.md) | 174 | `declaration-track:d9b2ce8095c1caf009e8d8b933bfdffd373d252567ddbe46e374dc3e6604697a` |
| 26 | `abbrev` | [CompressedString](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/compressedstring.md) | 179 | `declaration-track:98545fc67abb37fb38f51cf5caa10b54fd271e6bd14c225d5229a0eb772fa724` |
| 27 | `def` | [lookupMacroList](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/lookupmacrolist.md) | 182 | `declaration-track:a9745a60d8f447997a0748977e6738a05a980326ff90a1b3bb227b2b8c77e4fa` |
| 28 | `def` | [lookupMacro](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/lookupmacro.md) | 197 | `declaration-track:11f46981f4aba8d6d01f29c4566eefee42d08ea5d89b898a68bbf4ee158f18da` |
| 29 | `def` | [unwrapSymbol](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/unwrapsymbol.md) | 200 | `declaration-track:112aa94f28f5ebb23ceef8732b04d711d5ad353c5d350cd65e85b7601330144d` |
| 30 | `def` | [unwrap](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/unwrap.md) | 208 | `declaration-track:d7965815304b9b6100a2ddd220a8ee57d760346c47e611526d84cc75582ff664` |
| 31 | `theorem` | [unwrap_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/unwrap-nil.md) | 214 | `result-track:f93aa5d9251ccdade7b317bf978a9d784602b34ad2396460cf093bb3af668406` |
| 32 | `theorem` | [unwrap_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/unwrap-cons.md) | 217 | `result-track:6a611d40226e0abfa7257ae4d8868489c3b61148d337ddb2936db8aa59eff7c5` |
| 33 | `theorem` | [unwrap_append](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/unwrap-append.md) | 222 | `result-track:706de6e1836c6549a929578ea7f94e08a5e1d922a411b7e21ed744633e2a8cda` |
| 34 | `def` | [expandedLength](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/expandedlength.md) | 234 | `declaration-track:100b4a4f064384f4c51ae0c2e132dac920820beb7f25559e1a75a11ab8e706a9` |
| 35 | `theorem` | [expandedLength_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/expandedlength-nil.md) | 238 | `result-track:e5d5603310775247a879434197bd3aa7b926e5008f5faac91bb8989ecbff5ae4` |
| 36 | `theorem` | [expandedLength_append](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedSpinPhase.lean/declarations/expandedlength-append.md) | 241 | `result-track:32bf4c81d94d14349305b68cd16df60eb811ce4c94b621fcf33234834a132b0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=555284dfb2889657fd050b17788afb46c451c39ab411c2d79d8a1846446c05e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2c2faca1da6046319348a7ed92327a81a043181aa329a41e90e152b9828d1f52.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2c2faca1da6046319348a7ed92327a81a043181aa329a41e90e152b9828d1f52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

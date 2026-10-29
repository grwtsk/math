# Verification target: Core Spin Phase

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "594b5c8265590e6db6302cf33220b326b96a15ce",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfdc44d2897f3634a20f33c66b93b8b1f964e9bd5140c7bd1d9ec1ffdfd05f9d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `594b5c8265590e6db6302cf33220b326b96a15ce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfdc44d2897f3634a20f33c66b93b8b1f964e9bd5140c7bd1d9ec1ffdfd05f9d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfdc44d2897f3634a20f33c66b93b8b1f964e9bd5140c7bd1d9ec1ffdfd05f9d5.lean.json)

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
| 1 | `inductive` | [SpinPhase](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/spinphase.md) | 11 | `declaration-track:e106c2781a4cb0f7d5fd11ea419225a5ab03a83c022d1491469a314ea3c97c72` |
| 2 | `def` | [SpinPhase.weight](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/spinphase-weight.md) | 18 | `declaration-track:af71bd48cadbbeba767751f20a5c2113d58337a0fba2955e3c6c679f8daf903b` |
| 3 | `theorem` | [SpinPhase.weight_null](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/spinphase-weight-null.md) | 24 | `result-track:be3a26d2a1f566bda9fdc270273f2ce2208a98b3f5901b1f25938c774cbaca52` |
| 4 | `theorem` | [SpinPhase.weight_unit](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/spinphase-weight-unit.md) | 27 | `result-track:79d39b6f81dbae94e9a8a02c410c9b899ec97fd8809fc7441e0a2a65e1c49596` |
| 5 | `theorem` | [SpinPhase.weight_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/spinphase-weight-zero.md) | 30 | `result-track:2da1fff29f7689ded83dc0b5777187e079477d320ccba07fc714e4dd3dd5e117` |
| 6 | `theorem` | [SpinPhase.weight_twist](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/spinphase-weight-twist.md) | 33 | `result-track:bf929029f735263d2e69737b6e0e7fa8ae237c4f98bc92ed02b0f237bd53ae8f` |
| 7 | `structure` | [FormalMathString](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/formalmathstring.md) | 41 | `declaration-track:13f65561b02aa312e3d6f6485460a136dc89c6affcc9b11a0e4d85722f17e102` |
| 8 | `def` | [length](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/length.md) | 49 | `declaration-track:32b55a03ca9980b0eb53cdc599499edd3eb46ea2e1569614e625439a89db960b` |
| 9 | `def` | [empty](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/empty.md) | 52 | `declaration-track:4900dc4beb1be1f17e4fbcdeb492132821b2c00701a1d19ca624fc9b3575591c` |
| 10 | `def` | [singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/singleton.md) | 55 | `declaration-track:94ec0d7addc4afe5f3274e6032a7e552ca6b8ab81be86d612371da916f03bd49` |
| 11 | `def` | [append](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/append.md) | 58 | `declaration-track:ffdc3ec6701ced9799ee6da0964f68e92301537b62c3114e78330e20ab701839` |
| 12 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/instance-source-edition-2.md) | 61 | `declaration-track:d254730c0e6093794e400c761a353f9aff5b14ce3f6edcf92b887a9b94294ebe` |
| 13 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/instance.md) | 64 | `declaration-track:d236efa81de8c925533f07c4da708abcfac358691da7c49bf8b19fed61f70dbc` |
| 14 | `theorem` | [length_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/length-empty.md) | 67 | `result-track:538c7de3ea21e6488659633fb777eef81d11819c80c1606ffa9c34359a55d923` |
| 15 | `theorem` | [length_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/length-singleton.md) | 70 | `result-track:8cb592186812fc2f7fef4fde553761d6b9333b52741feb5750f1b465dbbc39e3` |
| 16 | `theorem` | [length_append](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/length-append.md) | 73 | `result-track:455740145d4823c69b62e2ffb67dca954ed84fd10caad4410c276775d6b6dad8` |
| 17 | `theorem` | [append_assoc](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/append-assoc.md) | 82 | `result-track:f6e30022fd02970285781338c8e08c1839455ea41fb71081c6282c15a36739db` |
| 18 | `theorem` | [empty_append](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/empty-append.md) | 94 | `result-track:1f274d320ed6190ec24d223838bf7e1cb20f1c86b3ad00d62e1fbe056bdc2adc` |
| 19 | `theorem` | [append_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/append-empty.md) | 101 | `result-track:1326d4b5e3012f44156f83d624f9e50f5283dfdf49437e341e30f4b1a37768d5` |
| 20 | `theorem` | [induction_on_symbols](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/induction-on-symbols.md) | 114 | `result-track:7193ceaaf516bec9b7a1c60f5c194fb6e7d8230b23935a98d356a1c7787fd9a5` |
| 21 | `structure` | [MacroDictionary](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/macrodictionary.md) | 138 | `declaration-track:e9708e798bfdaaf9760e94841a3b4d8cf3239b4a148ffcc8b4309b990765564d` |
| 22 | `def` | [macroCount](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/macrocount.md) | 147 | `declaration-track:28ce74f09da51396a8c335b50388e2b40cc311e63c58bd63f098ff4be6818bd7` |
| 23 | `def` | [hasNoMacros](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/hasnomacros.md) | 150 | `declaration-track:f06048dbd6bf4c04763cc12d14a7728dfbce884c0ef937689dd9ef39906776e6` |
| 24 | `theorem` | [macroCount_eq_zero_of_hasNoMacros](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/macrocount-eq-zero-of-hasnomacros.md) | 153 | `result-track:e4cf7c01073c4f41b04750b74be9b5a4a54e240064b237a148c238dc5dda5a6d` |
| 25 | `inductive` | [CompressedSymbol](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/compressedsymbol.md) | 166 | `declaration-track:7b912002191a889664542da1043163efce0c59730dacaedc50d635eca45cf7b4` |
| 26 | `abbrev` | [CompressedString](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/compressedstring.md) | 171 | `declaration-track:8111f88e212c42c1fa65b8e823d4868016c821b9d4e4ab4aba4b9b881dd379b4` |
| 27 | `def` | [lookupMacroList](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/lookupmacrolist.md) | 174 | `declaration-track:3c5db4cb57c96c5e4d80f65f56836210fd33b3222419fd77af8c1e98384f193d` |
| 28 | `def` | [lookupMacro](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/lookupmacro.md) | 189 | `declaration-track:0aed798e46924775d41dfabce9d9b821ac6275957a6f227fbef82b7650bcf4f4` |
| 29 | `def` | [unwrapSymbol](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/unwrapsymbol.md) | 192 | `declaration-track:d007d9eada35447099cf58b28b049da9e76bea41a298f038ca78c0cc768f297c` |
| 30 | `def` | [unwrap](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/unwrap.md) | 200 | `declaration-track:d7fa15fbfcc6dc3cd99b88ac21cd00df3e90e0f7c8b840e0cbfa80e14035594b` |
| 31 | `theorem` | [unwrap_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/unwrap-nil.md) | 206 | `result-track:66bce18c82e67b4b5be10695d7b2d5baf39cc4d1d853fe34e3101ee142423391` |
| 32 | `theorem` | [unwrap_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/unwrap-cons.md) | 209 | `result-track:54feaa51cc3890e440b1d78b86ea8cff54aa3a64953e1ed196879ed7286d748e` |
| 33 | `theorem` | [unwrap_append](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/unwrap-append.md) | 214 | `result-track:afd5a3afaabb7f727af29f59a4414caf803477e30a8652bc06b10586b56fd569` |
| 34 | `def` | [expandedLength](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/expandedlength.md) | 226 | `declaration-track:b9e9c2979dd3b779d1c6ea48f87ccc763b6fce324bbe0cb2f7c15ba6951c0cd9` |
| 35 | `theorem` | [expandedLength_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/expandedlength-nil.md) | 230 | `result-track:dfdc1cfa5269157d04041c35b3f1e6eba5a892b74ca493723ca52a6412e8555d` |
| 36 | `theorem` | [expandedLength_append](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreSpinPhase.lean/declarations/expandedlength-append.md) | 233 | `result-track:5be78e9904509a6f39f1dd91ad645d734278d9c50e89dd081ea733259d62455c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebfbe051cb3f83a6b19005ea79318135219e946039b2216b0d84b3d46f0964dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfdc44d2897f3634a20f33c66b93b8b1f964e9bd5140c7bd1d9ec1ffdfd05f9d5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantfdc44d2897f3634a20f33c66b93b8b1f964e9bd5140c7bd1d9ec1ffdfd05f9d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

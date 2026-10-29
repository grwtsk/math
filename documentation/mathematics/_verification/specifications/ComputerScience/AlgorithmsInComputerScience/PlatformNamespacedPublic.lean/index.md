# Verification target: Platform Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc4db6af2ed2eb50955947f573d88067a9986d09",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Platform/Variant9747f3932f69dfab96b9562cbb44d6f0baeafb26730b2bb67c2b48191354b92f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc4db6af2ed2eb50955947f573d88067a9986d09`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Platform/Variant9747f3932f69dfab96b9562cbb44d6f0baeafb26730b2bb67c2b48191354b92f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Platform/Variant9747f3932f69dfab96b9562cbb44d6f0baeafb26730b2bb67c2b48191354b92f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Bootstrap` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [getIsWindows](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/getiswindows.md) | 30 | `declaration-track:49862875e1dcfbd41611e2d6fd8fd7c01416fd76c0b645fac4c1a0fde4e7f0fa` |
| 2 | `opaque` | [getIsOSX](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/getisosx.md) | 34 | `declaration-track:05ca10bb267650d7bde8b8a981295eab33c578155a1e4c8616b639b99aba5982` |
| 3 | `opaque` | [getIsEmscripten](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/getisemscripten.md) | 38 | `declaration-track:80d36310d45511837a0d0c4ad354c514d9bd13f82d410fdbd178f3b50a20af37` |
| 4 | `def` | [isWindows](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/iswindows.md) | 43 | `declaration-track:7c20dbe2b2fed529b7a0119713d981785b92e600c09c3bd5094eafc8189f01b9` |
| 5 | `def` | [isOSX](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/isosx.md) | 48 | `declaration-track:90f570ff1c84930389aeac2397aaaf18482bc7cfa769ac373fb193d1eeb86ff3` |
| 6 | `def` | [isEmscripten](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/isemscripten.md) | 53 | `declaration-track:48e35869f23c27fdea94d4c9e89cb7ab86061db3c67b1cb2b52d8a6fd597f116` |
| 7 | `opaque` | [getTarget](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/gettarget.md) | 59 | `declaration-track:a7d59039f1e96aeebc442d67249f075e346e2da335a03168c057ad1cce1e7d98` |
| 8 | `def` | [target](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/target.md) | 64 | `declaration-track:bfd97025073903e1ed2847c4c46366439dc0bb6ca7ef94108601993a3014f747` |
| 9 | `opaque` | [Internal.getHardwareConcurrency](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/internal-gethardwareconcurrency.md) | 70 | `declaration-track:d45b666acd5dca7e07f527155278b47eb443d4e11f7cb7065913dc4819bcac0c` |
| 10 | `theorem` | [numBits_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/numbits-pos.md) | 73 | `result-track:249d660daa7e6eb92331f9893b19d0b384804c6380830aaf8bf3451d0739d58d` |
| 11 | `theorem` | [le_numBits](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/le-numbits.md) | 77 | `result-track:ecd3941a7729ce65844aa057be838210e6a1d68c22e513a90fbdd642ed37654f` |
| 12 | `theorem` | [numBits_le](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/numbits-le.md) | 81 | `result-track:e48c928fffa8338a72eceb0efdccb5cd7f2712ead6198fb76cd0f24ff1bf86d5` |
| 13 | `theorem` | [eight_le_numBits](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/eight-le-numbits.md) | 84 | `result-track:68d9e89035baacbd2fd38430ae81f9644bbb5082d23fc86b0e97ac327d120030` |
| 14 | `theorem` | [sixteen_le_numBits](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/sixteen-le-numbits.md) | 86 | `result-track:1d86aeafeb7f5d2bf6533d0fecb5b688df176c41feb028dc3765f1c8d889afba` |
| 15 | `theorem` | [eight_dvd_numBits](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/eight-dvd-numbits.md) | 89 | `result-track:802fd093731cfc16b51a44e336b62560445aa1eb1226dc91f3cd95dbfa6cba76` |
| 16 | `theorem` | [System.Platform.sixteen_dvd_numBits](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/system-platform-sixteen-dvd-numbits.md) | 91 | `result-track:eab116a2da1d95fba98a36a5bf2dfd8f986b6469a54a78b1f15da291a93ef295` |
| 17 | `theorem` | [System.Platform.dvd_numBits](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/system-platform-dvd-numbits.md) | 93 | `result-track:ed472aea5b1e3614349aa4c2a781f821480c706a346d9d3aa9b43777490f99d9` |
| 18 | `theorem` | [System.Platform.numBits_dvd](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/system-platform-numbits-dvd.md) | 95 | `result-track:fa7d5148282fa2321228acbdf79b2b249502db348a5cfd68180a04a3124da0c6` |
| 19 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/PlatformNamespacedPublic.lean/declarations/instance.md) | 98 | `declaration-track:3ec53ffc868b97f44cc3aaa18203349843c9a3579d3d7517a21401f501a565ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2454c79c0840cd1916c53b2c41ee72bffe93c11a81848d2a2ff3bab6cdb9fadf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Platform/Variant9747f3932f69dfab96b9562cbb44d6f0baeafb26730b2bb67c2b48191354b92f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Platform/Variant9747f3932f69dfab96b9562cbb44d6f0baeafb26730b2bb67c2b48191354b92f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Box

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ee70da406ba08991399fc1971da959af8a0e773",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Box/Variantce0402ec82e66fff75b59d348af50fdba46c49d3e7110b2a280054e2236156d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ee70da406ba08991399fc1971da959af8a0e773`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Box/Variantce0402ec82e66fff75b59d348af50fdba46c49d3e7110b2a280054e2236156d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Box/Variantce0402ec82e66fff75b59d348af50fdba46c49d3e7110b2a280054e2236156d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Box](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/box.md) | 43 | `declaration-track:70b671ef154610ba18a4459b6cc062eedf687fb307560faff8f14a5ff7316ab7` |
| 2 | `abbrev` | [Point](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/point.md) | 46 | `declaration-track:d2ede01939387645d80ac4a0016784cc27aa3b9f9a6c5d36426fc98e00ae7236` |
| 3 | `abbrev` | [PointQ](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/pointq.md) | 49 | `declaration-track:740687a659f2b3cd65f4cfa84fea16656f8e51a2ec543adb2797b7d855429e5a` |
| 4 | `def` | [toEnv](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/toenv.md) | 55 | `declaration-track:7a0e2449d200f91da5d66f0f90bcad21d5924d28b493e1c1cb13ea6732e3d97d` |
| 5 | `def` | [dim](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/dim.md) | 59 | `declaration-track:a4c1525bb4c584e1790697271819c9200026b3db1991e0304a620014f29a1aae` |
| 6 | `def` | [mem](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/mem.md) | 63 | `declaration-track:d25cec712b34b3814249f821ff58b31705ddfd3142bdff289d7ad95a9371b494` |
| 7 | `def` | [envMem](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/envmem.md) | 68 | `declaration-track:2b02f580e606677984320376a88d95d94cb1fdffe68f91bde1fcf509d0af8154` |
| 8 | `theorem` | [envMem_toEnv](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/envmem-toenv.md) | 74 | `result-track:ed6cb41cac6f537377d506caa4d42a1cd12954a20a08b7275eed434fc1cb52cc` |
| 9 | `def` | [intervalWidth](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/intervalwidth.md) | 90 | `declaration-track:172fdc06bb6541cb9ceb5b4f9149c1f7edaebce25d8fdae61752fdbe57711acf` |
| 10 | `def` | [widths](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/widths.md) | 93 | `declaration-track:43402df8910c5c09b3fcb6a1d398f8a990736ebf5c1bf082e2d5b515cd047a49` |
| 11 | `def` | [maxIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/maxidx.md) | 96 | `declaration-track:afb9893869bcd5b90dd74abee7f1879c6051c8a014c5b7f53f32e8f4cedc1abc` |
| 12 | `def` | [widestDim](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/widestdim-source-edition-2.md) | 106 | `declaration-track:bf281a23a28aa3429cc498344fa603c675b2e2a491a32ed331964ac73dbd22e1` |
| 13 | `def` | [widestDim'](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/widestdim.md) | 110 | `declaration-track:4d1338cab128585ca3a82d8aca400effc4352820bca4960f2ffe94ab55951fc0` |
| 14 | `def` | [split](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/split.md) | 120 | `declaration-track:5b8af14da27afbae247ca86807766939f49b66aa04b273f77212c800d4ba2438` |
| 15 | `def` | [splitWidest](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/splitwidest.md) | 131 | `declaration-track:da375b57fa207148dc46fc3a1ab7b4ed92db999325ba46d0344a5e5e461ea797` |
| 16 | `def` | [volume](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/volume.md) | 138 | `declaration-track:ad82a90b90d4b825cc636b3bd4dd09447aace95b68feebdea216deb1d7d3e3a2` |
| 17 | `def` | [maxWidth](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/maxwidth.md) | 142 | `declaration-track:af25bb86027fe8bef328868a4dacc581bdc9d279d564bbbb2a13e28e5171d102` |
| 18 | `def` | [isSmall](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/issmall.md) | 146 | `declaration-track:79d88680d66acda560decf474db8286d7af8346ffb66d42f6b15b48da38dc910` |
| 19 | `def` | [ofPairs](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/ofpairs.md) | 152 | `declaration-track:c2f4fcb23b812a4b0971d27fcb131c435f5fc59a9f407e40a363450d2460816e` |
| 20 | `def` | [unit](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/unit.md) | 157 | `declaration-track:5f7965f1fbbe5f218f72d6dcc0d5bf71fb2ce3272b10451e5bd24fcba646d5e5` |
| 21 | `def` | [symmetric](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/symmetric.md) | 161 | `declaration-track:46e0e1b4818979c494ac5347e5ae6f63fe9b8bdd378f46617c431b873026a1ac` |
| 22 | `def` | [ofBounds](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/ofbounds.md) | 165 | `declaration-track:3df822cfa643f1ebbc973cee2d87272b3f0baccd5a1dcec8dd77b8ab75f018fc` |
| 23 | `theorem` | [coord_mem_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/coord-mem-of-mem.md) | 172 | `result-track:efb147e18200ae88fc14d1c7b1d5bbd436bf696f8f50da392ab16aadacacc1c7` |
| 24 | `theorem` | [mem_split_cases](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/mem-split-cases.md) | 178 | `result-track:50304063b094c79d15ac7ba90cd91a357b2b1f7ddd4a31516b5045f647cad52a` |
| 25 | `theorem` | [envMem_split_cases](../../../../../ComputerScience/AlgorithmsInComputerScience/Box.lean/declarations/envmem-split-cases.md) | 216 | `result-track:3bfd2f5b6cb7816b6b1268dc3b6240e03f2d38644c851daafa27fd36da0c73c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bce8838e72d0c49ea29a95b79c88eb353645af13569626e7548340cacd6ebad3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Box/Variantce0402ec82e66fff75b59d348af50fdba46c49d3e7110b2a280054e2236156d3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Box/Variantce0402ec82e66fff75b59d348af50fdba46c49d3e7110b2a280054e2236156d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

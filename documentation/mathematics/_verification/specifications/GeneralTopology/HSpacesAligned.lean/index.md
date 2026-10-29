# Verification target: HSpaces Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4251c65246fb7902b9cc0fe740affb71d73f1283",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HSpaces/Varianta18e0ff4b5dd4fab05bde7ec45390abd082ddf5fb5865f107b494df23b8d003d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HSpacesAligned.lean/index.md) · [Full source](../../../../GeneralTopology/HSpacesAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4251c65246fb7902b9cc0fe740affb71d73f1283`.

Source path: `GRWTSK/Topology/GeneralTopology/HSpaces/Varianta18e0ff4b5dd4fab05bde7ec45390abd082ddf5fb5865f107b494df23b8d003d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HSpaces/Varianta18e0ff4b5dd4fab05bde7ec45390abd082ddf5fb5865f107b494df23b8d003d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HSpace](../../../../GeneralTopology/HSpacesAligned.lean/declarations/hspace.md) | 62 | `declaration-track:b1040520131991b64b9a55c0fcbf8007f6d22291adeed34e1c4cdff9aceabac1` |
| 2 | `instance` | [HSpace.prod](../../../../GeneralTopology/HSpacesAligned.lean/declarations/hspace-prod.md) | 79 | `declaration-track:37dac6eb0d306a6905cbd2fa26a9837b85dc934826def0f59871a3922c0cf109` |
| 3 | `def` | [toHSpace](../../../../GeneralTopology/HSpacesAligned.lean/declarations/tohspace.md) | 143 | `declaration-track:114ba8211ffd4aabc7747d3376308d7884acb1c58e01ef3bc2fda7b93cd77d82` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/HSpacesAligned.lean/declarations/instance-source-edition-2.md) | 153 | `declaration-track:b2be9f4ea8d9e444418b45dba2c367adaadfe144d5fd9dcbb2648705d6d1328e` |
| 5 | `theorem` | [one_eq_hSpace_e](../../../../GeneralTopology/HSpacesAligned.lean/declarations/one-eq-hspace-e.md) | 159 | `result-track:ca6fbdc8948d6f2f541ce7000350cebc352825514a5dd773dcc54fad0ef46603` |
| 6 | `example` | [(anonymous)](../../../../GeneralTopology/HSpacesAligned.lean/declarations/example.md) | 166 | `declaration-track:d1cf23d2c0208e177adaaf5de32b7b3725e0af0aa5a14ca42852b77f882f0ea5` |
| 7 | `def` | [qRight](../../../../GeneralTopology/HSpacesAligned.lean/declarations/qright.md) | 178 | `declaration-track:942306eee26ec0f5d6072d4a8f1fd37e81bf6e84ced40978282f8838b14860b7` |
| 8 | `theorem` | [continuous_qRight](../../../../GeneralTopology/HSpacesAligned.lean/declarations/continuous-qright.md) | 182 | `result-track:d514a4da2722339d9014c942292da464782071dc4da205cc5e1b4018459ba1fa` |
| 9 | `theorem` | [qRight_zero_left](../../../../GeneralTopology/HSpacesAligned.lean/declarations/qright-zero-left.md) | 187 | `result-track:b3d9f133b84619e00776284316f52bedbfe55bff94152e0d5aaf2c8ae9ec6509` |
| 10 | `theorem` | [qRight_one_left](../../../../GeneralTopology/HSpacesAligned.lean/declarations/qright-one-left.md) | 191 | `result-track:0b682eb0bd2742d8e4cbbd03109673a4703b248c55bb8af082fd82b6d8372b4f` |
| 11 | `theorem` | [qRight_zero_right](../../../../GeneralTopology/HSpacesAligned.lean/declarations/qright-zero-right.md) | 200 | `result-track:6c33cd68efae3c76590c129475271d2f1bcc7e85b4013c2fa4a44b879cbb4a8e` |
| 12 | `theorem` | [qRight_one_right](../../../../GeneralTopology/HSpacesAligned.lean/declarations/qright-one-right.md) | 212 | `result-track:b4df16ed8edf56e95ddab9d3da70b4bbc5733678b8e00ce8d91b876a756c1070` |
| 13 | `def` | [delayReflRight](../../../../GeneralTopology/HSpacesAligned.lean/declarations/delayreflright.md) | 233 | `declaration-track:4f1c10f03b030ecf0b78c50c61be969c7fb8602c2c1c8082dd9c4eece141520e` |
| 14 | `theorem` | [continuous_delayReflRight](../../../../GeneralTopology/HSpacesAligned.lean/declarations/continuous-delayreflright.md) | 244 | `result-track:385cf91aed2f838a22a354f1f51e5963aa595f9da7913467c9a70d6bdb3e7f71` |
| 15 | `theorem` | [delayReflRight_zero](../../../../GeneralTopology/HSpacesAligned.lean/declarations/delayreflright-zero.md) | 250 | `result-track:3d7041b88db797bcde5c322e2e3c85dbe9eed5b1b0a3f38aaa3f1d428edbfac5` |
| 16 | `theorem` | [delayReflRight_one](../../../../GeneralTopology/HSpacesAligned.lean/declarations/delayreflright-one.md) | 259 | `result-track:dd4f9d7b9f72cb77771adf8c65fe9c3ac71b90469286a351bf66cef1bb599416` |
| 17 | `def` | [delayReflLeft](../../../../GeneralTopology/HSpacesAligned.lean/declarations/delayreflleft.md) | 266 | `declaration-track:31b4a4730c4b01db9b8ecf8ca46deaf4006814d8213960ddb3c53f4494daec22` |
| 18 | `theorem` | [continuous_delayReflLeft](../../../../GeneralTopology/HSpacesAligned.lean/declarations/continuous-delayreflleft.md) | 270 | `result-track:577b2f2542aa503859368df515225d1bf1c9536bad3bcba6f1e7284b16d4990f` |
| 19 | `theorem` | [delayReflLeft_zero](../../../../GeneralTopology/HSpacesAligned.lean/declarations/delayreflleft-zero.md) | 276 | `result-track:f944e3a393f6fe2fe173d2ef79420123d9de79663f7ed9ef354b5e711c8344b5` |
| 20 | `theorem` | [delayReflLeft_one](../../../../GeneralTopology/HSpacesAligned.lean/declarations/delayreflleft-one.md) | 280 | `result-track:aa8b6e1295cc21b2520b911d1c47358ac87fdb262bb5e111a3e1648ecad894c9` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/HSpacesAligned.lean/declarations/instance.md) | 288 | `declaration-track:72fc647f2b41806c3e1a488f8b002bb9df7a986244795b16e60856f322f8f137` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c04bd60ac076424c20d3edb00064115bfbdae0cd60b49f4372f5634b619ff47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/HSpaces/Varianta18e0ff4b5dd4fab05bde7ec45390abd082ddf5fb5865f107b494df23b8d003d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/HSpaces/Varianta18e0ff4b5dd4fab05bde7ec45390abd082ddf5fb5865f107b494df23b8d003d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

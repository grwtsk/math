# Verification target: Absolute

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fe0a284c21f37280d729904e0677f2aa75f1539",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Absolute/Variant07372922ed3fa2a9b568456a27f66573570e2685b66fc59dbd735109352d8465.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Absolute.lean/index.md) · [Full source](../../../../GeneralTopology/Absolute.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fe0a284c21f37280d729904e0677f2aa75f1539`.

Source path: `GRWTSK/Topology/GeneralTopology/Absolute/Variant07372922ed3fa2a9b568456a27f66573570e2685b66fc59dbd735109352d8465.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Absolute/Variant07372922ed3fa2a9b568456a27f66573570e2685b66fc59dbd735109352d8465.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.GaloisCohomology.Continuous` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArithmeticFieldLabel](../../../../GeneralTopology/Absolute.lean/declarations/arithmeticfieldlabel.md) | 30 | `declaration-track:c22a0a39ec4e0d1ab2298d4f19f4a4fb32cc97911dcfd74c507156a0c347d82b` |
| 2 | `structure` | [AbsoluteGaloisGroupAdapter](../../../../GeneralTopology/Absolute.lean/declarations/absolutegaloisgroupadapter.md) | 41 | `declaration-track:4aadc43eee7a2c88ba358119b0875d4e8fa917ab64123b35a4b9623897b16f3c` |
| 3 | `structure` | [LocalGaloisGroupAdapter](../../../../GeneralTopology/Absolute.lean/declarations/localgaloisgroupadapter.md) | 50 | `declaration-track:09634430800ce87b092c9aa867e0b89ccc7229d8c4990f5ae876848d71dfa3b8` |
| 4 | `structure` | [AbsoluteFiniteGaloisModule](../../../../GeneralTopology/Absolute.lean/declarations/absolutefinitegaloismodule.md) | 63 | `declaration-track:c2cf72dcfd3410db9583aa56f9e18908c8083e69d3c78b19a5f0567c3369821c` |
| 5 | `abbrev` | [AbsoluteH1](../../../../GeneralTopology/Absolute.lean/declarations/absoluteh1.md) | 73 | `declaration-track:0f306593d72d3630b6d2988457d6e50cedd5f2f4511faecb72a5f5ec7995db10` |
| 6 | `theorem` | [absoluteH1_eq_continuousH1](../../../../GeneralTopology/Absolute.lean/declarations/absoluteh1-eq-continuoush1.md) | 80 | `result-track:19b5008a74858391a984eca22f4dd94fdd9a84394f6a0271a60420116b27684b` |
| 7 | `structure` | [AbsoluteToLocalRestriction](../../../../GeneralTopology/Absolute.lean/declarations/absolutetolocalrestriction.md) | 92 | `declaration-track:e869dcf0ef9bc3c76d385809ba09b67fc6a69bd165da3312f6961ec03310433d` |
| 8 | `def` | [resAbsoluteH1](../../../../GeneralTopology/Absolute.lean/declarations/resabsoluteh1.md) | 106 | `declaration-track:12e4bb8eed6c22016549815c671c4c4182972cbb69e19169c77c310c20512a47` |
| 9 | `theorem` | [resAbsoluteH1_value](../../../../GeneralTopology/Absolute.lean/declarations/resabsoluteh1-value.md) | 116 | `result-track:defe991436604c75d9a6c731a36036d2ee93622397fd775d0573f151fe9aa053` |
| 10 | `theorem` | [absoluteAdapter_depends_after_continuous](../../../../GeneralTopology/Absolute.lean/declarations/absoluteadapter-depends-after-continuous.md) | 128 | `result-track:093e96d5979944367c6459331eee3fb6577eee967106aca544c4f1ae64a904ca` |
| 11 | `theorem` | [absoluteAdapter_depends_after_finiteSelmer](../../../../GeneralTopology/Absolute.lean/declarations/absoluteadapter-depends-after-finiteselmer.md) | 134 | `result-track:b21be3990b8c49ecc68808ed9a0eddbe298784f3d6acaab5a494ef83c439cf22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b156e72e1e5a789956a5223afa045c878dfc69adfa16c7309beb6670f1552d51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Absolute/Variant07372922ed3fa2a9b568456a27f66573570e2685b66fc59dbd735109352d8465.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Absolute/Variant07372922ed3fa2a9b568456a27f66573570e2685b66fc59dbd735109352d8465.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

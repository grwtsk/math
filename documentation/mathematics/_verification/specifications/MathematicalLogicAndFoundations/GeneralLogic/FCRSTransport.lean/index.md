# Verification target: FCRSTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c88cb2bd2f24b2a39f2ffb601501a85605a1794f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FCRSTransport/Variantbb4a936e472b3e723e005b451c6dba30cab982e390375f288d2b2de1c5960810.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c88cb2bd2f24b2a39f2ffb601501a85605a1794f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FCRSTransport/Variantbb4a936e472b3e723e005b451c6dba30cab982e390375f288d2b2de1c5960810.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/FCRSTransport/Variantbb4a936e472b3e723e005b451c6dba30cab982e390375f288d2b2de1c5960810.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.TheoremTransfer.Core` — import line 1; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorem` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TypedArtifactVersion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/typedartifactversion.md) | 21 | `declaration-track:0d3ac52544be509a6df8d604acf289eeecc3b0361c65975f516d5ea6daf37b66` |
| 2 | `def` | [artifactKindCode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/artifactkindcode.md) | 26 | `declaration-track:57f60fa556d5c0a525fdbae290ad560c4d07f899974189e0dd2ea0e8dd0635b0` |
| 3 | `def` | [versionOfArtifact](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/versionofartifact.md) | 87 | `declaration-track:9d4ab9b1556b4e1d08f7dc98681b584c2eeadcfc27a0511e7017c8fa51ccf03b` |
| 4 | `def` | [eraseArtifactVersion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/eraseartifactversion.md) | 99 | `declaration-track:2a1614c1729302d3306bd5ea01fa6dc28200a60bf45b44405c2d3cf862e70510` |
| 5 | `theorem` | [proof_graph_projection_distinct](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/proof-graph-projection-distinct.md) | 104 | `result-track:d050f15d9d811e7e620ad6862e9a531d793a3234a6d828f1d1dbce6d4366e84c` |
| 6 | `def` | [leanFoundation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/leanfoundation.md) | 112 | `declaration-track:f5212a5ad4135dd9fdd1134168906c07aa4dc0a41204610859771b0033357dbd` |
| 7 | `def` | [ProfileClaimAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/profileclaimat.md) | 118 | `declaration-track:a5c9a54e6431e5828a09e9a9815c6b8502d5d1cdbd359413185f2f8a90b048c1` |
| 8 | `def` | [profileTheory](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/profiletheory.md) | 124 | `declaration-track:2b88c29d6e10f9d531021bcee97ef658597be8374525ac907c404e274b32014d` |
| 9 | `def` | [neutralQuantifierProfile](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/neutralquantifierprofile.md) | 141 | `declaration-track:337be2808dd1d08d32e27aff12d602e0fb3813b1e1426029210a2f3ce1d58399` |
| 10 | `def` | [profileTheoryVersion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/profiletheoryversion.md) | 158 | `declaration-track:a87fa8158fe22dbc6d5d109e77de7909f58bf0e12b2794879c8e29a98d9f0851` |
| 11 | `def` | [profileAssumptions](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/profileassumptions.md) | 179 | `declaration-track:687d82ca27a79192073f4eff95c2da9aebb633b7bff96915854720b1c041481d` |
| 12 | `def` | [profileScope](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/profilescope.md) | 187 | `declaration-track:2e9cacaca357567928d9fba16521574983bcc889f7cebdc2192b4b6ecb468417` |
| 13 | `def` | [profileRefinementTranslation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/profilerefinementtranslation.md) | 194 | `declaration-track:884521045e159c4174a653126bedfad7d3cb4a41c1d78d5a733b003bea6d0e91` |
| 14 | `theorem` | [profileRefinementPreserves](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/profilerefinementpreserves.md) | 258 | `result-track:413763a84b67470ffcf54bb0b919f915791dbea1da625aad652852e154746f48` |
| 15 | `def` | [profileRefinementPreservation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/profilerefinementpreservation.md) | 273 | `declaration-track:f2abae9d6153b070860adb6c97c26df4f5e695dadd04b9d76969ddfca6013c34` |
| 16 | `def` | [certifiedIntervalTheorem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/certifiedintervaltheorem.md) | 282 | `declaration-track:cc64401f13a2bac7f08b43c03b4163f5a892768aeaf6aa9ca9001fa9e270c8ab` |
| 17 | `def` | [transportCertifiedIntervalTheorem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FCRSTransport.lean/declarations/transportcertifiedintervaltheorem.md) | 296 | `declaration-track:da91346cc9b0d80ed398505b33b314119b4a262d01acd7ebdb12127e584f5ef8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2e9cb5e8c702cda4d60947f54ac66cad5f495eb54870dd0a6f781b4541c52db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FCRSTransport/Variantbb4a936e472b3e723e005b451c6dba30cab982e390375f288d2b2de1c5960810.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/FCRSTransport/Variantbb4a936e472b3e723e005b451c6dba30cab982e390375f288d2b2de1c5960810.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

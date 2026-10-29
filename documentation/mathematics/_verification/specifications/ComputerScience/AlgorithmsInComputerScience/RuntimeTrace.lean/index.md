# Verification target: Runtime Trace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21335f7a1d4390b4275d8018185ad90a3fdab6a6",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variantf46c79805a4d73d6834184d0fbd77c9f24e195641ff01d2dc30c8bc9e7adfb9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21335f7a1d4390b4275d8018185ad90a3fdab6a6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variantf46c79805a4d73d6834184d0fbd77c9f24e195641ff01d2dc30c8bc9e7adfb9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variantf46c79805a4d73d6834184d0fbd77c9f24e195641ff01d2dc30c8bc9e7adfb9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.Soundness` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [identityMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/identitymatrix.md) | 18 | `declaration-track:dac7185785122bd9893f16a089e495ce3a2ddc1cf89db7e6ed3ef8b0b4e8772f` |
| 2 | `def` | [pointVector](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/pointvector.md) | 23 | `declaration-track:379f6193ee73be87f3e7a930f3c7d88cabc62e6ab49a6478e8738b9ee5f1a4b7` |
| 3 | `def` | [matrixWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/matrixwire.md) | 27 | `declaration-track:cf2191dbd040ddbce5c756d7fd72bd405a68251651a8a79bb321d3aba5e9087a` |
| 4 | `def` | [operatorId](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/operatorid.md) | 30 | `declaration-track:ab0e906f853a2af59842e0b4f9f3cd7da558d4901f136b236f3276fd3cd20078` |
| 5 | `def` | [manifest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/manifest.md) | 32 | `declaration-track:235350055d749dd50af695888447bbe6eac27d0fbbd20edec4f6ace7f040ea7f` |
| 6 | `def` | [manifestWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/manifestwire.md) | 44 | `declaration-track:0249e8f7b5b6242fd40f97b6eb24316863748a5b3d71a9914cb4ffb0935b1b98` |
| 7 | `def` | [request](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/request.md) | 47 | `declaration-track:7f65f6d3aa73e1aa10c79722761cd1eb0abfe76c9de17ba94d835039fa0dacb7` |
| 8 | `def` | [requestWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/requestwire.md) | 54 | `declaration-track:5b22bb66cd03028025faa6307cb2307973b85849e7dc6096f8d2e2e56cc7309b` |
| 9 | `def` | [outputWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/outputwire.md) | 57 | `declaration-track:211721a5ccbe89bc6625ff7e439da5b85857516286a041a42e19138d1effa215` |
| 10 | `def` | [trace](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/trace.md) | 60 | `declaration-track:690ef9c14849f3dbdb02d901e87b82b0379705c8a3e5aa08dd352bf632ce56df` |
| 11 | `def` | [traceWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/tracewire.md) | 77 | `declaration-track:f0ef403e9ed685d138aaeb94e47e216b0340968058b06daeebd99ea06e3a39c1` |
| 12 | `def` | [submission](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/submission.md) | 80 | `declaration-track:e6b873c72d119c03d01f0a9680f3d01733edafd7904ff756b79afbc1b6fe1b1e` |
| 13 | `def` | [canonicalCommitment](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/canonicalcommitment.md) | 87 | `declaration-track:79e72798956ba3d7debca49da49ecd0645937b53e56c05c4965676417e0cca26` |
| 14 | `theorem` | [sha256_empty_matches_standard](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/sha256-empty-matches-standard.md) | 94 | `result-track:bc6eca6d4b65a97f8835390c09f2ccc45f2db7fa4a5c8353e908c6b960e7b07a` |
| 15 | `theorem` | [sha256_abc_matches_standard](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/sha256-abc-matches-standard.md) | 102 | `result-track:16954c0a887e17b98b4d6ec90a6922cd0cc344eb9733f7720736dddae2a3a729` |
| 16 | `theorem` | [exactSubmissionAccepted](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/exactsubmissionaccepted.md) | 112 | `result-track:8b1f3b56832445a1298f6b59a7461f9d1ed2403976ee6f6a41eaa11036ac5d54` |
| 17 | `theorem` | [exactCanonicalSubmissionAccepted](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/exactcanonicalsubmissionaccepted.md) | 117 | `result-track:9068a145849ebf22ac75e8e30f057c5ee24608deb2e22f6a5ea3407508cce0bd` |
| 18 | `theorem` | [exactCanonicalManifestBytesPinned](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/exactcanonicalmanifestbytespinned.md) | 121 | `result-track:ac8d59d23b0f9f22114484285aca575383b45f4a772f6bbf7a1a621d0a69cab1` |
| 19 | `theorem` | [exactSubmissionRepresents](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/exactsubmissionrepresents.md) | 125 | `result-track:bcc75cc976cb38ce7182f13dd7489810c9d0ab07621cea35e4133e84824e91f8` |
| 20 | `theorem` | [exactOperationPreserved](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/exactoperationpreserved.md) | 128 | `result-track:c62f7a42f9e450fc035241b9fab741cd18142e564484b94435b748ca3c77dce3` |
| 21 | `def` | [alternateManifest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/alternatemanifest.md) | 142 | `declaration-track:c69395bfa1835d2c3f5e22a32c17e21eec6453618a86a553e1735c7c4286bd1f` |
| 22 | `def` | [alternateManifestWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/alternatemanifestwire.md) | 145 | `declaration-track:686260b42c1dd05e18e58a9e3ba1364e7a863dda8f4746cd02f9c89cd77de3d0` |
| 23 | `def` | [alternateRequest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/alternaterequest.md) | 148 | `declaration-track:5ad7fe52f2c0c31d9f6b4b6f4558e5e4c8a0935a45c375349946a394c824e189` |
| 24 | `def` | [alternateRequestWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/alternaterequestwire.md) | 151 | `declaration-track:bafe83de90dd158be6618725ae497ca95555fc7e85b68200aded19c4adbad156` |
| 25 | `def` | [alternateTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/alternatetrace.md) | 154 | `declaration-track:e238dad5acab0f0d1baae9996bc7badf875235009099ab6d7fe902da9ee8678a` |
| 26 | `def` | [alternateTraceWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/alternatetracewire.md) | 159 | `declaration-track:a951423c36c01a2c76660adab7deaa6244bc0d23e9f758d477c54e3ff99abafa` |
| 27 | `def` | [alternateSubmission](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/alternatesubmission.md) | 162 | `declaration-track:54d83982c02a1cec2dd2fd110b187469aed5c395f1aa8bad2860578f43b1ace8` |
| 28 | `theorem` | [alternateBundleIsSelfContainedAccepted](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/alternatebundleisselfcontainedaccepted.md) | 167 | `result-track:9c7b2541583e7c196eb793257bbecda848a2109319398a3a5d1285d3d6fa44c3` |
| 29 | `theorem` | [alternateBundleRejectedByCanonicalCommitment](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/alternatebundlerejectedbycanonicalcommitment.md) | 171 | `result-track:96c2f3385a7c53921da5b347c0498fa6d521ae8a3c83447d1a1216c31f94c092` |
| 30 | `def` | [wrongWireDigestCommitment](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/wrongwiredigestcommitment.md) | 175 | `declaration-track:9f812a7d4605ce54ea8b30eb4598d969cc969d22afb9f3867e85fbeef55aa9b8` |
| 31 | `def` | [wrongSnapshotCommitment](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/wrongsnapshotcommitment.md) | 178 | `declaration-track:1abdaed21066efbe7eba734a2882865d8c3ffac25317bed09d3438fb5222419b` |
| 32 | `def` | [wrongTerrainCommitment](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/wrongterraincommitment.md) | 181 | `declaration-track:c6ffbd3297531b21b052787e0b4f650f1abc88fcf365a90e95c33a5858b2823e` |
| 33 | `def` | [wrongCharacterRegistryCommitment](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/wrongcharacterregistrycommitment.md) | 184 | `declaration-track:9d108800aa23e1bdc653c0f8bad6f5db79d5be02725dc5a1659d9a06e034c6fd` |
| 34 | `theorem` | [rejects_wrong_committed_wire_digest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/rejects-wrong-committed-wire-digest.md) | 187 | `result-track:5cfce6a7db7ac59032cae4743ea2fb802f341262f5a0b76bf6a5dc7c25f8881a` |
| 35 | `theorem` | [rejects_wrong_committed_snapshot_digest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/rejects-wrong-committed-snapshot-digest.md) | 191 | `result-track:0b1a5f586b1525f6f325f5be827c75a83d73c14c7525328af563eeec63dc317e` |
| 36 | `theorem` | [rejects_wrong_committed_terrain_digest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/rejects-wrong-committed-terrain-digest.md) | 195 | `result-track:73acd771178f489ee063c34aeb5b09888b5a7a137f359f81a25f456d8a3c8364` |
| 37 | `theorem` | [rejects_wrong_committed_character_registry_digest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/rejects-wrong-committed-character-registry-digest.md) | 199 | `result-track:fde39fe08dfa977e7567ac64741687be8b4a43c1125ffdc332feea36bae6be84` |
| 38 | `def` | [badMagic](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/badmagic.md) | 203 | `declaration-track:753c2a363b2703bbbfc6186cb7cfb53e378267b452f11cfd3143fa12fb604efd` |
| 39 | `def` | [badVersion](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/badversion.md) | 204 | `declaration-track:33fcd85bd9afdb0420446a1fcf973bd9824975f12c577001f05f3d5a83ad5bf7` |
| 40 | `def` | [unknownTag](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/unknowntag.md) | 205 | `declaration-track:8c1eb350d882f5049a65589dc758c4a5ae6b53d27093995b0b92a2466c3fbb96` |
| 41 | `def` | [badReserved](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/badreserved.md) | 206 | `declaration-track:d10abbfde3c49cf4aa638b02723cf7a79df8b74f091b7b69589d4cca54d24caf` |
| 42 | `def` | [badPayloadDigest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/badpayloaddigest.md) | 207 | `declaration-track:97b0ecd030e18ee4e1087904263940230da9ed9d7a3c5b5872c0104f1381fbcc` |
| 43 | `def` | [trailingByte](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/trailingbyte.md) | 208 | `declaration-track:716f94b49814ee82348192b3d0505e3168699181b08add55e776d66f94a5e142` |
| 44 | `def` | [truncatedFrame](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/truncatedframe.md) | 209 | `declaration-track:f353735db8b7d85790cccf8573de0110d5f067cde0e33f4f4c2f7d4c0d43573a` |
| 45 | `def` | [excessiveDeclaredPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/excessivedeclaredpayload.md) | 210 | `declaration-track:1236418aa4b33fc12908a649969505facba15aa0fd910e1e6e4365d6b2cb96e2` |
| 46 | `theorem` | [rejects_bad_magic](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/rejects-bad-magic.md) | 214 | `result-track:1c0493b705727590517706167966ba0c976a152f572cbb734f29452e04a1536e` |
| 47 | `theorem` | [rejects_bad_version](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/rejects-bad-version.md) | 215 | `result-track:92117c3d30ab19ac5489e105d5dff8e57d32181e9f43600e52409740d14be3dd` |
| 48 | `theorem` | [rejects_unknown_tag](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/rejects-unknown-tag.md) | 216 | `result-track:66af6fdc2e00cdf03b68196f2cba4ddcbaaa0327ff07c000c596e206d5d052d6` |
| 49 | `theorem` | [rejects_reserved_byte](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/rejects-reserved-byte.md) | 217 | `result-track:c2bbeca74411049adee1af9a6ce1436ecd574cf7a8e0ce22c15e30ea2018b79f` |
| 50 | `theorem` | [rejects_digest_mismatch](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/rejects-digest-mismatch.md) | 218 | `result-track:553156e493c7f23c0b9cfb22e8ebaf305bb8734a6546fa688fe67cf6a90c0e75` |
| 51 | `theorem` | [rejects_trailing_byte](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/rejects-trailing-byte.md) | 219 | `result-track:862ea758b9507822a344fce580cf48a2ebb821d6f5eb64316a10afaa1d5310c6` |
| 52 | `theorem` | [rejects_truncation](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/rejects-truncation.md) | 220 | `result-track:8f65bdfc8509e57730d5e32e0fac39729318bec21f215062dbb17e198b8e0055` |
| 53 | `theorem` | [rejects_excessive_declared_payload](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/rejects-excessive-declared-payload.md) | 221 | `result-track:9ea1c62608ac2c83f73ce52446194d27b7cd1e67880daf996e44726c878b34bc` |
| 54 | `def` | [wrongOutput](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/wrongoutput.md) | 226 | `declaration-track:274e0257473268d747d068df263f1a77a87f1e408fcbf45fa97ca6d9d495e5a2` |
| 55 | `def` | [wrongOutputWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/wrongoutputwire.md) | 230 | `declaration-track:09ad7de0080224946c1f5e48f88386cfe96c15868af5b2d523aa4943b48dae9f` |
| 56 | `def` | [selfConsistentButWrongTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/selfconsistentbutwrongtrace.md) | 233 | `declaration-track:dc0a35a25c1c8670279bf1d51d7fee128e9cd13388a8dd5bf5a4ce183063227f` |
| 57 | `def` | [wrongSubmission](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/wrongsubmission.md) | 238 | `declaration-track:b10485a37d11c1240f1f19281496b6d88233caaa390a7cea96f0730ea5b8ba94` |
| 58 | `theorem` | [changed_expected_value_cannot_bless_runtime](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/declarations/changed-expected-value-cannot-bless-runtime.md) | 242 | `result-track:963cc1535c7cc04064454ef49cff8602d97640c52339a862facc96d47cfc565c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e8a4942d5b0baf4832724f70f5926e4d30b032daa318cfae8fdfe2bd28784b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variantf46c79805a4d73d6834184d0fbd77c9f24e195641ff01d2dc30c8bc9e7adfb9b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variantf46c79805a4d73d6834184d0fbd77c9f24e195641ff01d2dc30c8bc9e7adfb9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

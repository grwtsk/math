# Verification target: Profiles

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52230e82dc18a80050925719cd849330f307242a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profiles/Variantfaafb0a2d44eed22221305645a73144ac410d6b351c7531b74acd52c756b01fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52230e82dc18a80050925719cd849330f307242a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profiles/Variantfaafb0a2d44eed22221305645a73144ac410d6b351c7531b74acd52c756b01fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profiles/Variantfaafb0a2d44eed22221305645a73144ac410d6b351c7531b74acd52c756b01fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.BitDocument` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizeLineEndings](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/normalizelineendings.md) | 16 | `declaration-track:e4ce05b9fa04fea471f3e7f0180100cb37213a5071f9d93c88fb1021430faa1f` |
| 2 | `def` | [CanonicalLineEndings](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/canonicallineendings.md) | 23 | `declaration-track:a07811f313187da48ee82f009dc936545bd39d73082207e48203e5de90b95c94` |
| 3 | `theorem` | [normalizeLineEndings_canonical](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/normalizelineendings-canonical.md) | 27 | `result-track:108eee087606e8658082da86ed7e6d659b9e39c19be61e48c68498965cd1fbb2` |
| 4 | `theorem` | [normalizeLineEndings_eq_self_of_canonical](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/normalizelineendings-eq-self-of-canonical.md) | 45 | `result-track:d74f513a1dc3870d9b2631a18c4c511249c5eb3376e802016e317a273769fe06` |
| 5 | `theorem` | [normalizeLineEndings_idempotent](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/normalizelineendings-idempotent.md) | 65 | `result-track:4de8a8e8763aa90d4209d9053c016d610b1f0148e36e2570bd6918d5c7046e38` |
| 6 | `def` | [payloadOfCharacters](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/payloadofcharacters.md) | 72 | `declaration-track:b4390b28c753216c62d1af8442029cf12be806138de5605318612e410f670e11` |
| 7 | `inductive` | [RuntimeCodecProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/runtimecodecprofile.md) | 79 | `declaration-track:a37179eac027ba6a59694859394aa3b4ee2793dd4ce2e2d3fdd52fe2ef049d55` |
| 8 | `def` | [profileCharacters](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/profilecharacters.md) | 85 | `declaration-track:bb8ae527383d76f0a4f06f55970df0283be0494dafb8e7614ace0ada77842f94` |
| 9 | `def` | [profilePayload](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/profilepayload.md) | 90 | `declaration-track:87f1d3a8627e2d0a7be2de14bd1b2271f9abb185ae53df91ad3ce659f09ceba6` |
| 10 | `def` | [encodeWithProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/encodewithprofile.md) | 95 | `declaration-track:25bf6f229296b609c26d705a428e7e51fe69a6e3cf6813347279c93948d9d5e0` |
| 11 | `def` | [encodeRustProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/encoderustprofile.md) | 99 | `declaration-track:5c46c31fb95ac53f903a2b6f862da5ea61b682330170b1accc4909cbd8f6524b` |
| 12 | `def` | [encodeJavaScriptProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/encodejavascriptprofile.md) | 101 | `declaration-track:ff122632e9d109c696ec0aa2d6a8b7c30a8b594a91d5dfe7803392b0dabdfa53` |
| 13 | `theorem` | [rust_profile_payload_bytes](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/rust-profile-payload-bytes.md) | 105 | `result-track:04d68c809e86be26f5a98c203538fb343cccf326fa1dde39891ce77890a0ac84` |
| 14 | `theorem` | [javascript_profile_payload_bytes](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/javascript-profile-payload-bytes.md) | 112 | `result-track:4c57d406317cba03325ee58187e0efd47b83dee83a0448433fc68a2147f82cf7` |
| 15 | `theorem` | [encodeWithProfile_relation](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/encodewithprofile-relation.md) | 120 | `result-track:61bda141777b835b010458af9bbdac86a978057f5eca82ab794465e593334652` |
| 16 | `theorem` | [profiles_agree_on_canonical_domain](../../../../../ComputerScience/AlgorithmsInComputerScience/Profiles.lean/declarations/profiles-agree-on-canonical-domain.md) | 129 | `result-track:9c20cfab87e6316d7f606bbb15391dee097e3f0c792f5f0b9f2634f56a9a17bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=586ab4b20633755879005b989828db0eedd6057ca530bf96eaf7b962cfaa7443 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profiles/Variantfaafb0a2d44eed22221305645a73144ac410d6b351c7531b74acd52c756b01fa.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profiles/Variantfaafb0a2d44eed22221305645a73144ac410d6b351c7531b74acd52c756b01fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

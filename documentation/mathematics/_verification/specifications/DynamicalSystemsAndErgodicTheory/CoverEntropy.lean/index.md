# Verification target: Cover Entropy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38015c8911940b320a2cbd89df153f30f342af42",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38015c8911940b320a2cbd89df153f30f342af42`.

Source path: `GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.ExpGrowth` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.ENatENNReal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.TopologicalEntropy.DynamicalEntourage` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDynCoverOf](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/isdyncoverof.md) | 73 | `declaration-track:c7001be2897eacf084100f515f2848440926aa62d2524b48b00262bee8275790` |
| 2 | `lemma` | [IsDynCoverOf.of_le](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/isdyncoverof-of-le.md) | 76 | `result-track:1d06d3c2e66c1910ef0348ccbf8636be8e7eaf545689c1f994521461691ed2e1` |
| 3 | `lemma` | [IsDynCoverOf.of_entourage_subset](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/isdyncoverof-of-entourage-subset.md) | 81 | `result-track:3da1cb36ae8a1069c32324a96989b6b4a03ecb16d2d6fa920cc8f7dcded5e114` |
| 4 | `lemma` | [isDynCoverOf_empty](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/isdyncoverof-empty.md) | 87 | `result-track:4442225fafe9d2626e9bd9db419a482c02f76654c097d0bee6f5ab20f05e3f00` |
| 5 | `lemma` | [IsDynCoverOf.nonempty](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/isdyncoverof-nonempty.md) | 91 | `result-track:1275c948fc41b3f798e942e91655b15117c6b70ce889279a1c7b65dac42d26d6` |
| 6 | `lemma` | [isDynCoverOf_zero](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/isdyncoverof-zero.md) | 97 | `result-track:73765264873297db36c6fc150a799a61c6952f5013eeff2ac35e13332e47ff88` |
| 7 | `lemma` | [isDynCoverOf_univ](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/isdyncoverof-univ.md) | 104 | `result-track:ed11da4f30f4c0398ac5680069402acb176679997e842799fc48d30f65e03892` |
| 8 | `lemma` | [IsDynCoverOf.nonempty_inter](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/isdyncoverof-nonempty-inter.md) | 110 | `result-track:d069f710714f8fad381ffa5581e038cf75445079ce7a75f2ce9280c824880987` |
| 9 | `lemma` | [IsDynCoverOf.iterate_le_pow](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/isdyncoverof-iterate-le-pow.md) | 129 | `result-track:d08d77b75c1de1b367744d15ffe203c740e43181fb6b9c46329d66e1ed79f646` |
| 10 | `lemma` | [exists_isDynCoverOf_of_isCompact_uniformContinuous](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/exists-isdyncoverof-of-iscompact-uniformcontinuous.md) | 200 | `result-track:70a25094e25d915839d566eb50790120da230df191d512cd689bcb72e38eaa7a` |
| 11 | `lemma` | [exists_isDynCoverOf_of_isCompact_invariant](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/exists-isdyncoverof-of-iscompact-invariant.md) | 209 | `result-track:e278fe991ec4665d044102b917c011cf37ca4759f10b40ca72afcacee93a5f5b` |
| 12 | `def` | [coverMincard](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/covermincard.md) | 225 | `declaration-track:ab108d9a503ecd9abcb069738044908024d06d5aa130dc7cc0fc4335a141cc6d` |
| 13 | `lemma` | [IsDynCoverOf.coverMincard_le_card](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/isdyncoverof-covermincard-le-card.md) | 228 | `result-track:0fa6d0eb7d73d2ee01e6e1080cd817c0f25de2b627a20f903a2221adf19fd6d8` |
| 14 | `lemma` | [coverMincard_monotone_time](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/covermincard-monotone-time.md) | 233 | `result-track:f481f475eaa01881a855d048ab3684560c773d80fd0ee2f06a0bd7c1373ac01c` |
| 15 | `lemma` | [coverMincard_antitone](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/covermincard-antitone.md) | 237 | `result-track:583a46de08bf69f1a4c902c8042e6795714e72170adbb8754a154665fce89456` |
| 16 | `lemma` | [coverMincard_finite_iff](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/covermincard-finite-iff.md) | 241 | `result-track:6189c52bb915a3cd4585e18fdffc654b728e4a3eb33d342a57bef6d0a414b727` |
| 17 | `lemma` | [coverMincard_empty](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/covermincard-empty.md) | 262 | `result-track:1dfce33333990544c827c91f2be356924e0a971d52cf3e47935156e7087e808b` |
| 18 | `lemma` | [coverMincard_eq_zero_iff](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/covermincard-eq-zero-iff.md) | 265 | `result-track:da525699de2b8331b7bb722d0c9cf4112f5003e8dc97e59d74fbc6715b1a2d09` |
| 19 | `lemma` | [one_le_coverMincard_iff](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/one-le-covermincard-iff.md) | 274 | `result-track:71aa2d0dae405496ca4f6268f3032a1c05665a58e41020b1371711dcb9bffcc5` |
| 20 | `lemma` | [coverMincard_zero](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/covermincard-zero.md) | 279 | `result-track:1d5f0d5cd4740de6f2655de51324fac393f2d100b5046203fb9f4a944aa40a8f` |
| 21 | `lemma` | [coverMincard_univ](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/covermincard-univ.md) | 288 | `result-track:d1f919b263c4266e965a4730c0fddd8b8d2ef635580acaad1165de702248ada2` |
| 22 | `lemma` | [coverMincard_mul_le_pow](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/covermincard-mul-le-pow.md) | 297 | `result-track:bb453e3b2ee200cc539655b8ab59cbafead7b808645ef1aed6434478050abb7c` |
| 23 | `lemma` | [coverMincard_le_pow](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/covermincard-le-pow.md) | 311 | `result-track:9c2b1f5cad264d52b6845659b4eb7990c9d03b3d773866ef723b2d9040076a37` |
| 24 | `lemma` | [coverMincard_finite_of_isCompact_uniformContinuous](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/covermincard-finite-of-iscompact-uniformcontinuous.md) | 317 | `result-track:eaa97c0b8d35f0bdf5378780b02e5d53b7cdccbd9cccca9b4a28d07c3f866e9c` |
| 25 | `lemma` | [coverMincard_finite_of_isCompact_invariant](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/covermincard-finite-of-iscompact-invariant.md) | 324 | `result-track:fe73ce6cf338fa604033998e43d1a5a464d34d348ba74a0fe80f308003217014` |
| 26 | `lemma` | [nonempty_inter_of_coverMincard](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/nonempty-inter-of-covermincard.md) | 333 | `result-track:a4c576c19edc16392dd03087134769da7f417ce52d48a387eac12dfc5159a8a5` |
| 27 | `def` | [coverEntropyEntourage](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyentourage.md) | 361 | `declaration-track:f983e78fa11d257606feaba644790249e3c5390650b21bcf84649b7555a2bf43` |
| 28 | `def` | [coverEntropyInfEntourage](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyinfentourage.md) | 367 | `declaration-track:79d46135f421120734dbc7353328c1ef5cb7e065ad55bf5c0b0e4b0221e1cd33` |
| 29 | `lemma` | [coverEntropyInfEntourage_antitone](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyinfentourage-antitone.md) | 370 | `result-track:8698ba8c6597c38505f787fd816f5304abd72c0de091c401c9f736ddc1fa4f08` |
| 30 | `lemma` | [coverEntropyEntourage_antitone](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyentourage-antitone.md) | 374 | `result-track:c913399ba700c027d1653873b7d639fd45fd13fab24696ac7d757cd34a41da27` |
| 31 | `lemma` | [coverEntropyInfEntourage_le_coverEntropyEntourage](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyinfentourage-le-coverentropyentourage.md) | 378 | `result-track:5fba23eedbd34ada933d7bb0142b2109ae6daffb966c841b58f6618eefe49cad` |
| 32 | `lemma` | [coverEntropyEntourage_empty](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyentourage-empty.md) | 383 | `result-track:840af1f65c25c38d833142913cdbe84fbd01bc5a31def4d752c9b66025d747bd` |
| 33 | `lemma` | [coverEntropyInfEntourage_empty](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyinfentourage-empty.md) | 389 | `result-track:16a331ee183993d1cf2e07f87dd47460a0cdcb14541ecc286b60d4eed474ee9a` |
| 34 | `lemma` | [coverEntropyInfEntourage_nonneg](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyinfentourage-nonneg.md) | 393 | `result-track:e233c07a65cf1ec289b2ef7ff2d4f8bc581c9cca320f5068f1f48eca048577bc` |
| 35 | `lemma` | [coverEntropyEntourage_nonneg](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyentourage-nonneg.md) | 402 | `result-track:567a0d03fa309ab0257374ad6919c96c38d795d9a43cd6de3ebe96c51381b724` |
| 36 | `lemma` | [coverEntropyEntourage_univ](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyentourage-univ.md) | 407 | `result-track:98b9e21d23f5647b178eb60eab6cf5f159e7248e758878aeb3d7db2f124d7b74` |
| 37 | `lemma` | [coverEntropyInfEntourage_univ](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyinfentourage-univ.md) | 412 | `result-track:7a102bac243b7050d496203f838eed16e01b61fbd64d2bd65491e93abe6b7bcb` |
| 38 | `lemma` | [coverEntropyEntourage_le_log_coverMincard_div](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyentourage-le-log-covermincard-div.md) | 417 | `result-track:8f85b74ab9e9177740245f6f7241cb1dbea9541e40c057775d2ae7eb3bb12251` |
| 39 | `lemma` | [IsDynCoverOf.coverEntropyEntourage_le_log_card_div](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/isdyncoverof-coverentropyentourage-le-log-card-div.md) | 431 | `result-track:f4ed4e331e20b50280d3243e349941ffb1ddc2014ec92c352c71d0406e84312a` |
| 40 | `lemma` | [coverEntropyEntourage_le_coverEntropyInfEntourage](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyentourage-le-coverentropyinfentourage.md) | 439 | `result-track:73ad79bee3943001682ffea6b29a9009390089d45e9bb392fb11875d43e3f582` |
| 41 | `lemma` | [coverEntropyEntourage_finite_of_isCompact_invariant](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyentourage-finite-of-iscompact-invariant.md) | 445 | `result-track:8d10b2a13cd8e0e2f299c89a97d4e70a780431837621f02bc6da8667348d8ff3` |
| 42 | `def` | [coverEntropy](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropy.md) | 461 | `declaration-track:e67c161cf4dcbe13ab84bf712e270776a87d674d452b2cb718923693236be550` |
| 43 | `def` | [coverEntropyInf](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyinf.md) | 468 | `declaration-track:ac7c42725e9a305d38756b87343774febbf96d67cd5c153b6f77912f65c834a7` |
| 44 | `lemma` | [coverEntropyInf_antitone](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyinf-antitone.md) | 471 | `result-track:c4f089cf08e01dd53881a17913ec31184ec9522e43037d9392dd1f1c9ad1d2cb` |
| 45 | `lemma` | [coverEntropy_antitone](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropy-antitone.md) | 475 | `result-track:e08c28aca596fc99707299b396803e2ff1bbefb6d8ab460d0a7c8f3d960cf82b` |
| 46 | `lemma` | [coverEntropyEntourage_le_coverEntropy](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyentourage-le-coverentropy.md) | 481 | `result-track:39553d43e8bb096ecef55ca865cadfae37dc3ddd175fa623650a1789c2a81990` |
| 47 | `lemma` | [coverEntropyInfEntourage_le_coverEntropyInf](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyinfentourage-le-coverentropyinf.md) | 486 | `result-track:a056d120c51008bd6f81467252d2834cf90b969a81fb1408434ffc18afcdd676` |
| 48 | `lemma` | [coverEntropy_eq_iSup_basis](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropy-eq-isup-basis.md) | 491 | `result-track:b7a8c03f6c296d623605fc3007e23144bbbb5876b24ae3e50198a63592464900` |
| 49 | `lemma` | [coverEntropyInf_eq_iSup_basis](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyinf-eq-isup-basis.md) | 500 | `result-track:c43d3b8105012748e98deec505be32e87cec6a16cb10cb42c9503275ba31c914` |
| 50 | `lemma` | [coverEntropyInf_le_coverEntropy](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyinf-le-coverentropy.md) | 509 | `result-track:0e47746fd1d04f1416a640dc2b395b827a6b06d28dd8c8245d4f8239bb4c895e` |
| 51 | `lemma` | [coverEntropy_empty](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropy-empty.md) | 515 | `result-track:c8bcddca0746b36c4f84f1237caa5befda9a32f220bb197b8d6d6f44a188e6b9` |
| 52 | `lemma` | [coverEntropyInf_empty](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyinf-empty.md) | 519 | `result-track:133d6028b67892aac8358871674fb9f2d1172ddbbb94a9a8cb80546dbb187078` |
| 53 | `lemma` | [coverEntropyInf_nonneg](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyinf-nonneg.md) | 522 | `result-track:6f5b6fbb66204887a4f1646aedd8d0a99e2610e098174fe2eaebaded3b8387b6` |
| 54 | `lemma` | [coverEntropy_nonneg](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropy-nonneg.md) | 527 | `result-track:921c5c48185266e85671f83342c6f4789834981d8594d25f64ad569c0be28df8` |
| 55 | `lemma` | [coverEntropyInf_eq_coverEntropy](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/declarations/coverentropyinf-eq-coverentropy.md) | 531 | `result-track:36349570f500956f31df576bc8ae31972f39f286f078e596b2ef9dcb44ca90b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98ffe3462ebb90a9123a7e06cc67e0d2fc577cbfdc4c3eb959629233b4f6bc6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

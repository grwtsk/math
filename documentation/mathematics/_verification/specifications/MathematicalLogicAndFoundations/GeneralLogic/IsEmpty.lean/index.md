# Verification target: Is Empty

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff122d75f61b66517ab708f2c9eb7395e0d46ad9",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variant8daf42e797a42b3e9b9e486db4012c3dea03c7b6f51cbcb0f770136a4bab344f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff122d75f61b66517ab708f2c9eb7395e0d46ad9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variant8daf42e797a42b3e9b9e486db4012c3dea03c7b6f51cbcb0f770136a4bab344f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variant8daf42e797a42b3e9b9e486db4012c3dea03c7b6f51cbcb0f770136a4bab344f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isempty.md) | 26 | `declaration-track:83a08f7de78fe0ac80829431c13e3fa635ddfa9c49cd638d78bb6c5f97382fa4` |
| 2 | `instance` | [instIsEmptyEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/instisemptyempty.md) | 30 | `declaration-track:10a565870eef0e9ae77e4bc39a0523fdc7b59d869e6afef27f835f5c5a43437d` |
| 3 | `instance` | [instIsEmptyPEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/instisemptypempty.md) | 33 | `declaration-track:3c6e700a8eb96ae622d30793e5558b3a8e696fb1e01975c11c5e4b9121957eab` |
| 4 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/instance-source-edition-4.md) | 36 | `declaration-track:a125251a069fbdf0f2de23d7ec89b08ed52161edbb30b0ecca4c7c0ae72d0918` |
| 5 | `instance` | [Fin.isEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/fin-isempty.md) | 39 | `declaration-track:1cf4ea3b00a4726a55b88e828e311ed684ccc37a0314c1c8bd3889c0d546344a` |
| 6 | `theorem` | [Function.isEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/function-isempty.md) | 42 | `result-track:382c9851ee0322d1c01683b3fcd0716341ee84e9633f0e90f1040ad692412400` |
| 7 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/instance-source-edition-5.md) | 46 | `declaration-track:bfcc30e98222b6aa0ed112c35524d6210bb8b51e0f9b40e1c02df68b1bf6b5f9` |
| 8 | `instance` | [PProd.isEmpty_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/pprod-isempty-left.md) | 49 | `declaration-track:a63152e154a772690708c19f2122944194bda8f14b073c0680949cddd4e094b4` |
| 9 | `instance` | [PProd.isEmpty_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/pprod-isempty-right.md) | 52 | `declaration-track:527868a23e3f21fa131bc54fb0d91c5f39dd82e8cfb6537e4bbdd21048047f84` |
| 10 | `instance` | [Prod.isEmpty_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/prod-isempty-left.md) | 55 | `declaration-track:53d69a98ff05da86eecbc93277a5494b087d7cbc716247db4aeb5f0527a3b48e` |
| 11 | `instance` | [Prod.isEmpty_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/prod-isempty-right.md) | 58 | `declaration-track:b8b08b4b6f9f8ab278cf48020226514ecb16b6ad28aab0331b6665ced1f4d8d2` |
| 12 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/instance.md) | 61 | `declaration-track:2d5b74923c43fe402a4380f8a46687d50cf3a12a48b7b722bef3a3b171fc46d2` |
| 13 | `instance` | [instIsEmptySum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/instisemptysum.md) | 64 | `declaration-track:1ec07b81e6b5413169635516e3dcbd5f4e561a94e5688e4668650eac167f84ff` |
| 14 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/instance-source-edition-2.md) | 68 | `declaration-track:36350f156e2166a0ae985337ad6c6978eafe72e8c8df3f545f7eb5a2fd7cdad0` |
| 15 | `theorem` | [Subtype.isEmpty_of_false](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/subtype-isempty-of-false.md) | 72 | `result-track:cad8814d5602200ca5a11d7f70e9cf4364732c4525cfbe8d00c5e4ed6dc710ac` |
| 16 | `instance` | [Subtype.isEmpty_false](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/subtype-isempty-false.md) | 77 | `declaration-track:897121daa0ef1ff5c515e5ae54791012c809c81286331d70dd2c24618da30734` |
| 17 | `instance` | [Sigma.isEmpty_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/sigma-isempty-left.md) | 80 | `declaration-track:14e03922dec43deb2086795147772eb74a12d451b9edccdd390f8ad1629a76cc` |
| 18 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/example.md) | 83 | `declaration-track:2def294bb0a1d35b8f2accf3dca8f1a144db0c1c61daf4e37ec4b5f9df0799de` |
| 19 | `def` | [isEmptyElim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isemptyelim.md) | 87 | `declaration-track:fd07c21269891b1ae77cbca501f97400b096b1642b79d7ae30c64ea6a46e983b` |
| 20 | `theorem` | [isEmpty_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isempty-iff.md) | 91 | `result-track:c6c0cc3ebcf539356457b2df9350eb07a777273dfce1f17cba42feb734061faa` |
| 21 | `def` | [elim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/elim.md) | 101 | `declaration-track:2fb8927e08094445b42df616794eb0b8c1e9cd80bb00606a580badd5fda6869e` |
| 22 | `def` | [elim'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/elim-source-edition-2.md) | 107 | `declaration-track:4ab26e5c09899516c030f01c2b6275e83b30c5ec19828e130eda71092d40390f` |
| 23 | `theorem` | [prop_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/prop-iff.md) | 111 | `result-track:412db1455aacaf65cba73b606c93a534bac8ef69b0ecc4cf477461923dd28343` |
| 24 | `theorem` | [forall_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/forall-iff.md) | 118 | `result-track:b710f659909e0ba598df77572a8bd7d4050aa1092f7956acf1b69175f6a46dd3` |
| 25 | `theorem` | [exists_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/exists-iff.md) | 123 | `result-track:7c0c6563f848b58476c275319f1de2429b386537142532bbb2ec082b6874f7e4` |
| 26 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/instance-source-edition-3.md) | 128 | `declaration-track:48d761b43db00a565829511619d43cab1ca963bdc3fe38fc1b104dd1820f2742` |
| 27 | `theorem` | [not_nonempty_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/not-nonempty-iff.md) | 134 | `result-track:0928de4300aacafb3047cb9aaddc04363b2596bf5352e9eaf618073b3a99f973` |
| 28 | `theorem` | [not_isEmpty_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/not-isempty-iff.md) | 139 | `result-track:faaed8b596cc9ab9359570af29ba8ece2eeb4d00648c7773bc93e0f3ccf68f7e` |
| 29 | `theorem` | [isEmpty_Prop](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isempty-prop.md) | 144 | `result-track:5844ba233c223a25445207742cb002b93ce2f279a880beef3fb94f96a926e2f9` |
| 30 | `theorem` | [isEmpty_pi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isempty-pi.md) | 149 | `result-track:61c629f97a2f172d1a075cce3cdb22fdb228a3f0f4a3fa5add7eb02aa24a9872` |
| 31 | `theorem` | [isEmpty_sigma](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isempty-sigma.md) | 154 | `result-track:f864fb7be17a6a540154d0a21ab3cb4a8a4748160991f383e667f23b68b57b11` |
| 32 | `theorem` | [isEmpty_psigma](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isempty-psigma.md) | 159 | `result-track:cc33cfea98d0b0e8defd7ea3715bb7f6b21b08cfbb49ddb85f328917bff6da2b` |
| 33 | `theorem` | [isEmpty_subtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isempty-subtype.md) | 164 | `result-track:8148c6aa4ed0afbe4926bbf95f57563ae0d1a59c67d0db1c66bbcb353d522b39` |
| 34 | `theorem` | [isEmpty_prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isempty-prod.md) | 169 | `result-track:8631cd2a130c100c019abbf535e8e500c4deb053e1435a59f71754b8290792cc` |
| 35 | `theorem` | [isEmpty_pprod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isempty-pprod.md) | 174 | `result-track:dbaea291d0e5d01a5b197d5fa174bac7b70a25b2fd421b327695e191b1fbf87a` |
| 36 | `theorem` | [isEmpty_sum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isempty-sum.md) | 179 | `result-track:35d77719723401543f3e9c8e03485589b233f067b2a11d086c13a873d5303821` |
| 37 | `theorem` | [isEmpty_psum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isempty-psum.md) | 184 | `result-track:74c9a7ef0b426fac69d6d092821e8f663bc38bbda5eeeedd1604cd156c710f0b` |
| 38 | `theorem` | [isEmpty_ulift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isempty-ulift.md) | 189 | `result-track:490db8f085a0b7ee31211bf80aa3e71f6ddfff6e37d30d23a7dd667e9c1d89a2` |
| 39 | `theorem` | [isEmpty_plift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isempty-plift.md) | 194 | `result-track:98e94d0ff0a8670afdfbeb58099e6a40f0ed1d94d64a8be30be4d1da3c7c1d8d` |
| 40 | `theorem` | [wellFounded_of_isEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/wellfounded-of-isempty.md) | 198 | `result-track:1a91fe47ceec4916218a1f864aca734163a7e5c2ba014f12e1c417b78dd77770` |
| 41 | `theorem` | [isEmpty_or_nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/isempty-or-nonempty.md) | 204 | `result-track:ecf147d43700c62b3da1177496949ec96b613128f5631224f3aa64ef22016d91` |
| 42 | `theorem` | [not_isEmpty_of_nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/not-isempty-of-nonempty.md) | 209 | `result-track:633ddaa647d30acc7cdd40e7822f402ec7109dd86f8be8fd969650ec0a4b7238` |
| 43 | `theorem` | [Function.extend_of_isEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/IsEmpty.lean/declarations/function-extend-of-isempty.md) | 215 | `result-track:a224bd5369c7cfeaac03bae29d5ed63e40cdbcc3a59b7d64c6ddb41c90229c11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df960f6d7eaa7fd4065c9da18fc981f72c39d203f623ae6c025f6a73670e5d59 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variant8daf42e797a42b3e9b9e486db4012c3dea03c7b6f51cbcb0f770136a4bab344f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/IsEmpty/Variant8daf42e797a42b3e9b9e486db4012c3dea03c7b6f51cbcb0f770136a4bab344f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

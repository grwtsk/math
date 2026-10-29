# Verification target: Heyting Regular Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16dc17b42bbd55fd1af656adfc2eff471956af87",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant5b3f38587231bc3aaed854fdea1c41f0aebbd9ccee06a1580dda848872a57bdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16dc17b42bbd55fd1af656adfc2eff471956af87`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant5b3f38587231bc3aaed854fdea1c41f0aebbd9ccee06a1580dda848872a57bdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant5b3f38587231bc3aaed854fdea1c41f0aebbd9ccee06a1580dda848872a57bdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.GaloisConnection.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsRegular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/isregular.md) | 48 | `declaration-track:e3bf547f147edf3efde80c3383b8a69720a2d22c370966fb6548892e9458bd72` |
| 2 | `theorem` | [IsRegular.eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/isregular-eq.md) | 51 | `result-track:5a11cbf666699da1229de0d3b291a96420b53161f8bebedb5f6edc856d4b7d90` |
| 3 | `instance` | [IsRegular.decidablePred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/isregular-decidablepred.md) | 54 | `declaration-track:1d444e525df426a612ac55efbb20e837c9f1841791c3c48adaca6c438551105f` |
| 4 | `theorem` | [isRegular_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/isregular-bot.md) | 63 | `result-track:3de26ad0dc324da04170930a7bde9ec7f55c248af613b6a772847eb87af1a662` |
| 5 | `theorem` | [isRegular_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/isregular-top.md) | 65 | `result-track:a6173803d9ebb3035647998497295b367b9dfe577cc453c8aca7b9bbf3769c73` |
| 6 | `theorem` | [IsRegular.inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/isregular-inf.md) | 67 | `result-track:cd1ff5f8afae4c78712470bb5d05d94a27d46e7de1e01b0648ad23fa2aa52e61` |
| 7 | `theorem` | [IsRegular.himp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/isregular-himp.md) | 70 | `result-track:00d40d69a90c8b5c349350476d336a08be37fd853e57a93217083cdd6ee0652e` |
| 8 | `theorem` | [isRegular_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/isregular-compl.md) | 73 | `result-track:daed20fbca9adde099b7fd95e0fb7eee57a6bb79fd795746be1fd65e6111f797` |
| 9 | `theorem` | [IsRegular.disjoint_compl_left_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/isregular-disjoint-compl-left-iff.md) | 76 | `result-track:bea5d5d55123334cdb82859c91c4c067c759984cf58b674d7f92c4f203b32274` |
| 10 | `theorem` | [IsRegular.disjoint_compl_right_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/isregular-disjoint-compl-right-iff.md) | 79 | `result-track:2a5a6e714fda2a4e84b8379cd84e969c6bf2258c96b5376afe45bbea4a062a31` |
| 11 | `abbrev` | [Heyting Regular Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-isregular-va.md) | 84 | `declaration-track:5ebd8e83fe69447f97d022b835800cee6de8843feb417db17a9aa9053c725d20` |
| 12 | `def` | [Regular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/regular.md) | 98 | `declaration-track:c19c7f9a1041442f7ee943437cf727d71da1b660e9873d20c0691f3f981efc73` |
| 13 | `def` | [val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/val.md) | 106 | `declaration-track:01417df5ed5014ade1fc05757f4cf4d5078842c705f0a21f8bbdeab8a3bcc4cc` |
| 14 | `theorem` | [prop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/prop.md) | 109 | `result-track:4c278a76d0f49d407b04c408eb7c3febdb90f0152627b676cf41ff47a22147d7` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/instance-source-edition-2.md) | 111 | `declaration-track:982886b0aedb0119b0664c5e206b680ef24d6e314c769ebeea52c051df865d1a` |
| 16 | `theorem` | [coe_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/coe-injective.md) | 113 | `result-track:92eacc71d8c196d25d035f9487087ef2457e902e5356c000ce9d11be445308b0` |
| 17 | `theorem` | [coe_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/coe-inj.md) | 117 | `result-track:585d3ec60d94b0185173b41e7ff1d7e0d84d43b73938acb18cf2f2368d3bce0b` |
| 18 | `instance` | [top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/top.md) | 120 | `declaration-track:60ef3744016db1865bc72816aee0d4fd912540eb527841e14d626225881132e6` |
| 19 | `instance` | [bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/bot.md) | 123 | `declaration-track:c2a1de13a5bdff659379d3b89f7ee9cbf287c67e5a8e8d45ce7db625ab5ffe68` |
| 20 | `instance` | [inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/inf.md) | 126 | `declaration-track:843117345dd07e7fa62228aef5eb177f5c5306331e3ccab604fb88c7c66bde9e` |
| 21 | `instance` | [himp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/himp.md) | 129 | `declaration-track:c40a548ff7095ebda037ac039fc1d23e8548cba50d2aa35019736b5b075b3da7` |
| 22 | `instance` | [hasCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/hascompl.md) | 132 | `declaration-track:e5dcfee29106cdb6b1add2d1edfa9f571937b597f460f06dd3c11004012141cf` |
| 23 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/coe-top.md) | 136 | `result-track:3478cfcb38ee10cebd48edd36e9d03864e4cb1430d90926ae8a778bac02b9fae` |
| 24 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/coe-bot.md) | 140 | `result-track:072253d78b24cda3bb46292b92cffff84ca77bc13a89ccc5638c134fa89b3522` |
| 25 | `theorem` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/coe-inf.md) | 144 | `result-track:dcef6512903ea4a46e11bc5d16072b5669cea8db8836c162bdc7e95e02143d13` |
| 26 | `theorem` | [coe_himp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/coe-himp.md) | 148 | `result-track:80f7e0ffe5350745971ae238eabbc3495526bc437066b5260ec6265e7771ff64` |
| 27 | `theorem` | [coe_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/coe-compl.md) | 152 | `result-track:cfdaf29ae192b84ead1ee833c5f0e3d7784b9549f0443f90f0de2fa91b890382` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/instance-source-edition-3.md) | 155 | `declaration-track:ab915c098950043fa03992c3761f3585b93611c5558207461a5a0a261c7add6d` |
| 29 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/instance.md) | 158 | `declaration-track:6056b116737e555d94a5bfcf1e83f60e44f690e21a87c02b6c9e16629f435112` |
| 30 | `instance` | [boundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/boundedorder.md) | 161 | `declaration-track:f02d3f0fb95fc5f5631449b6ea9943c012c5c61869386f6475ee4bd4e6cb7400` |
| 31 | `theorem` | [coe_le_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/coe-le-coe.md) | 165 | `result-track:394fcd3f58585b5557de90f19497c468ff2be23e9185168b2839216b766526eb` |
| 32 | `theorem` | [coe_lt_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/coe-lt-coe.md) | 169 | `result-track:6efb564f7d6fcd7605f052f3b076fe6216b96a5d588de0f845291f556e4c0a43` |
| 33 | `def` | [toRegular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/toregular.md) | 173 | `declaration-track:325e4e78e53b03e244fe038b1f166143fb425d5b0c3994e482b9e8dd7ac2768b` |
| 34 | `theorem` | [coe_toRegular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/coe-toregular.md) | 178 | `result-track:da064b768abf1cbd76cffc7d319068fd7807d61ed3d672b6cf144e953c5cf395` |
| 35 | `theorem` | [toRegular_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/toregular-coe.md) | 182 | `result-track:b70362a4f0aa1043366fc9ec94d4c89ad812d28fdeadf95f9b35b1cd45d21519` |
| 36 | `def` | [gi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/gi.md) | 186 | `declaration-track:6096a8f83428eb673178ebe866ee6e030cd9e25cde1fd1af70ded4f7a4108e77` |
| 37 | `instance` | [lattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/lattice.md) | 194 | `declaration-track:ebe4e2a07b5a35a32e22bc71004342f264f4c14ffd688dcde125fa6c7e339d30` |
| 38 | `theorem` | [coe_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/coe-sup.md) | 198 | `result-track:0daf50c1a6996f05f346afd3d2fa1b0f6ade333c783192827f29a788680245c0` |
| 39 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/instance-source-edition-4.md) | 201 | `declaration-track:e047b1064666589910bfa5ff8ba6ef6971f7408bf0ada68dae85e8ca6dd9767a` |
| 40 | `theorem` | [coe_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/coe-sdiff.md) | 223 | `result-track:02afcd9e85698da57251e7b163caf33544845a5a5ab16ca5509e8595e615a467` |
| 41 | `theorem` | [isRegular_of_boolean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/isregular-of-boolean.md) | 232 | `result-track:81f1035c40ca90f7f423310aceeff4e4bd09860a62e1735492eb8b56c8857efa` |
| 42 | `theorem` | [isRegular_of_decidable](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegularNamespaced.lean/declarations/isregular-of-decidable.md) | 236 | `result-track:3eed91104597463a54dfefd9f64a23be3bb275fbb777c1a724aee9fd0cc25dfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da1c7ac8d0abe4aac1ec97ad7fd5154f9e1a4203f02a64ad42bfd92f49272de8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant5b3f38587231bc3aaed854fdea1c41f0aebbd9ccee06a1580dda848872a57bdf.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant5b3f38587231bc3aaed854fdea1c41f0aebbd9ccee06a1580dda848872a57bdf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

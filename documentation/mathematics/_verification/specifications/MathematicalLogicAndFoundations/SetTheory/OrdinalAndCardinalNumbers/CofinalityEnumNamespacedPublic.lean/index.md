# Verification target: Cofinality Enum Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3af06e93d17884d3bd0b3605a07da4c8e257ff2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4be54af02e43abc4add1411c683b3219730561f3a8646c2bf994737eb7de2f72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3af06e93d17884d3bd0b3605a07da4c8e257ff2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4be54af02e43abc4add1411c683b3219730561f3a8646c2bf994737eb7de2f72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4be54af02e43abc4add1411c683b3219730561f3a8646c2bf994737eb7de2f72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsRegularCardinalOrder](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/isregularcardinalorder.md) | 57 | `declaration-track:62303442b9cef7ac76cf168f33b3db6be07867f3371260f2a15584a583fd5087` |
| 2 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 60 | `declaration-track:ab95f194bce198b6d5e7dbb93a02195035fe783971081998155ec2c63919a7fa` |
| 3 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 62 | `declaration-track:f71bb5c38b39904567d7d7fc2d01b7a16c1424b9d0748bf6586e586c64fe0a5b` |
| 4 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/instance.md) | 71 | `declaration-track:1775f2e02816a5592d49c741740901b5549514bbc6a71b5e0a6e15edfac27b21` |
| 5 | `theorem` | [ord_cof_eq_type_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/ord-cof-eq-type-lt.md) | 83 | `result-track:d21b0c3d1c375adccf1fe535cf35067ad49b361fad6f0a9db2ae885f34c23718` |
| 6 | `theorem` | [cof_eq_cardinalMk](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/cof-eq-cardinalmk.md) | 89 | `result-track:3a58d63dfa2423020d559bdd5fd8de9ead6dde00798df85146d59362f4281687` |
| 7 | `theorem` | [Cofinality Enum Namespaced Public](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-isregularcardinalord.md) | 93 | `result-track:08b51ceb3b3ef5dce9326b857cdcad90ea3c4113b79f0cc72ff39eeb6c07b487` |
| 8 | `theorem` | [cof_ordinal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/cof-ordinal.md) | 96 | `result-track:8a4ab21dd96b8f913fafc29d4d0ce67cafd1cdda703e37ec9f660695b1f16eea` |
| 9 | `theorem` | [type_eq_of_isCofinal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/type-eq-of-iscofinal.md) | 99 | `result-track:3452643e93ecbd17d7a93cd73fa9405a5c17f7031092c1be0fecef8ad5222a0c` |
| 10 | `def` | [enum](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/enum.md) | 106 | `declaration-track:583e9becce11a245ffff03dd1e1f34a9624af374aa548f95d5df58552dd9f96a` |
| 11 | `theorem` | [enum_le_of_forall_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/enum-le-of-forall-lt.md) | 111 | `result-track:5de33980750e2c09910d10558df2cdb322de2036bcaa872493145371118bf8cf` |
| 12 | `theorem` | [enum_succ_le_of_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/enum-succ-le-of-lt.md) | 117 | `result-track:70416abd10e3ec26c5a5f48bd8b67307574d4d333d1b6122770328d305570662` |
| 13 | `theorem` | [enum_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/enum-univ.md) | 123 | `result-track:a238cae2f7686bc6b53c134c1d537ade1dd8f257f56e62807341409131ea26c3` |
| 14 | `theorem` | [enum_anti](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/enum-anti.md) | 127 | `result-track:df1614278dc45f207375f294fdb5af50afae67846d5fdefee3a817f6bfccea82` |
| 15 | `theorem` | [enum_eq_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/enum-eq-iff.md) | 135 | `result-track:88e6549ed0eb481a5eda919fe70e633e7a8f6d1674c0a7040f60f2ca24b2b4c6` |
| 16 | `theorem` | [enum_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/enum-range.md) | 146 | `result-track:9c4906fe22430b0a7cc41cbecbf7bcbe6f4d3490a13b0314cb3dbb4ca8ab96c1` |
| 17 | `theorem` | [enum_bot](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/enum-bot.md) | 153 | `result-track:175a439529ca4dd162809b218f4aa70758c41541315e926c53d700888ed5658a` |
| 18 | `theorem` | [isNormal_enum_iff_dirSupClosed](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CofinalityEnumNamespacedPublic.lean/declarations/isnormal-enum-iff-dirsupclosed.md) | 163 | `result-track:f36e38352b15c23b62a4d0c56b5d4bd52b8e8eed8dfc55888490ddce13297a6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1343b42306d0fdede05f80f5cf5bd352377b47b0400dec638dbef36eafc9966b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4be54af02e43abc4add1411c683b3219730561f3a8646c2bf994737eb7de2f72.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4be54af02e43abc4add1411c683b3219730561f3a8646c2bf994737eb7de2f72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

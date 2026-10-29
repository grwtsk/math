# Verification target: Finsupp Lex Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed3ce71a6bdbd5597a0c98c361c0002d10b97180",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant43bcca7ab15af433c3c6643253fe9a2ab057b66fdcbfde4152af0228fb547fea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed3ce71a6bdbd5597a0c98c361c0002d10b97180`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant43bcca7ab15af433c3c6643253fe9a2ab057b66fdcbfde4152af0228fb547fea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant43bcca7ab15af433c3c6643253fe9a2ab057b66fdcbfde4152af0228fb547fea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Lex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lex](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/lex.md) | 40 | `declaration-track:74fe92d5d64bef966dac487ba81d9f7a8a1862ced73bb3151ac19ed1619cb0a7` |
| 2 | `theorem` | [Finsupp Lex Namespaced](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-le.md) | 45 | `result-track:03658ed003796797bfb583bd570f7379a0e18ebde27af9fd0adb6de531dcee16` |
| 3 | `theorem` | [lex_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/lex-def.md) | 50 | `result-track:185c6c1e098922e133217869ceee9760ff53df160680d045e75bb326551ae76c` |
| 4 | `theorem` | [lex_eq_invImage_dfinsupp_lex](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/lex-eq-invimage-dfinsupp-lex.md) | 55 | `result-track:f1bf4ac536726366472ae83a13a9557c1567affc316b77e0fba7d74b182dc75d` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/instance.md) | 60 | `declaration-track:f28c671f2645a5f02bc1c20931232646b9f884299da04668177490deb777c8fb` |
| 6 | `theorem` | [lex_lt_of_lt_of_preorder](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/lex-lt-of-lt-of-preorder.md) | 63 | `result-track:a6f8ff5aa3ac19913945fd2c060c0aa8ec6b6b3dbd2d2fc0d62408c321352906` |
| 7 | `theorem` | [lex_lt_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/lex-lt-of-lt.md) | 68 | `result-track:d952073fbccc3c563950511062c2c368434cc789cb57b3d15db455621dc8eae9` |
| 8 | `instance` | [Lex.isStrictOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/lex-isstrictorder.md) | 73 | `declaration-track:04c2823d1e77c6e0dbdd3b80c020f2be865570bd896becadf80eb4f8d6d1bd4c` |
| 9 | `instance` | [Lex.partialOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/lex-partialorder.md) | 84 | `declaration-track:dca11671da541561b5b597e05578b45785945a2d4ebfd78674b16427c2a0b87b` |
| 10 | `instance` | [Lex.linearOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/lex-linearorder.md) | 89 | `declaration-track:2822724d73ac10190d49f8dc99233172acc8522e512244daa2802f277177c3de` |
| 11 | `theorem` | [toLex_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/tolex-monotone.md) | 96 | `result-track:a0e98a8fc0d5e745cc5c35c6c47c784ced492c233108cc0ee01b6645c17b97d3` |
| 12 | `theorem` | [lt_of_forall_lt_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/lt-of-forall-lt-of-lt.md) | 100 | `result-track:689ee7e89db19bcc83c70126beda58e50d17f3ff9f1e978999af4fde51797fa1` |
| 13 | `instance` | [Lex.covariantClass_lt_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/covariantclass-lt-left.md) | 123 | `declaration-track:6055fff8ce05ea30e7dfcc7d93df6d3e3cedc703bfb58f6e0949617c6bc59946` |
| 14 | `instance` | [Lex.covariantClass_le_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/covariantclass-le-left.md) | 128 | `declaration-track:461500bf3f30e901f8a1e590b676a1b69c4adfd9ef498b970b5022eac5e872ff` |
| 15 | `instance` | [Lex.covariantClass_lt_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/covariantclass-lt-right.md) | 139 | `declaration-track:3f41d0345401be0a76910f2b2b35c406afa9468ff980821c49161831595005ef` |
| 16 | `instance` | [Lex.covariantClass_le_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/covariantclass-le-right.md) | 145 | `declaration-track:cd2b34cec2bccfafe5c8d7b7adc18aa67345ea8b357fe3bbc3c29bac6367f71b` |
| 17 | `instance` | [Lex.orderBot](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/lex-orderbot.md) | 158 | `declaration-track:6e189631933cfe103a14190ea61144f23e27d7d33f45fb11ba55bd19091cddb7` |
| 18 | `instance` | [Lex.orderedAddCancelCommMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/lex-orderedaddcancelcommmonoid.md) | 162 | `declaration-track:19e0e66db8cae483f8775bd05d2a06a2002e7a68dba76044a5ab09e0076d4e65` |
| 19 | `instance` | [Lex.orderedAddCommGroup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/lex-orderedaddcommgroup.md) | 167 | `declaration-track:578fa7eee006132ce8cd94847407aff23c0768a4fb73833d1c14ee05b1a1043e` |
| 20 | `instance` | [Lex.linearOrderedCancelAddCommMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/lex-linearorderedcanceladdcommmonoid.md) | 171 | `declaration-track:621730c1a3ae5ed762861106c3e65ed8a2443529ba459604c2fa0edbae7ddd7f` |
| 21 | `instance` | [Lex.linearOrderedAddCommGroup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppLexNamespaced.lean/declarations/lex-linearorderedaddcommgroup.md) | 176 | `declaration-track:ed71472113666eb2400138ccd5f9b496b28935aa141a81e2cfdc177475a7448d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=802d061400afda5548f1fb8ff8d3479e2b85fc1e7afe94300a71aacf6170ad2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant43bcca7ab15af433c3c6643253fe9a2ab057b66fdcbfde4152af0228fb547fea.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant43bcca7ab15af433c3c6643253fe9a2ab057b66fdcbfde4152af0228fb547fea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

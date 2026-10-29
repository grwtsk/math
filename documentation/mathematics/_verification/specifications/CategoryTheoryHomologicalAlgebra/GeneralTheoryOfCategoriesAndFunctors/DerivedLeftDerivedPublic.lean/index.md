# Verification target: Derived Left Derived Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f358ce3a309f2db4b45ecbf2ff5096b8b9f9eff8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant626cd12a6685898782f57f242a9ead92e1eb2ed8f428b43e572944250dfac85b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f358ce3a309f2db4b45ecbf2ff5096b8b9f9eff8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant626cd12a6685898782f57f242a9ead92e1eb2ed8f428b43e572944250dfac85b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant626cd12a6685898782f57f242a9ead92e1eb2ed8f428b43e572944250dfac85b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLeftDerivedFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/isleftderivedfunctor.md) | 51 | `declaration-track:b5d39fe66f4da033c717408756faac8f760d8aa42681211dc391ee4e1b52f8f8` |
| 2 | `lemma` | [isLeftDerivedFunctor_iff_isRightKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/isleftderivedfunctor-iff-isrightkanextension.md) | 55 | `result-track:d85e10ccdc2711ef209008507333af229fb190f3b200f7328148bd4e7ec6b0ee` |
| 3 | `lemma` | [isLeftDerivedFunctor_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/isleftderivedfunctor-iff-of-iso.md) | 62 | `result-track:7ea2a8428349bccde5801255cf2959f09179da5829d5994a35c75a0de8ead168` |
| 4 | `def` | [leftDerivedLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/leftderivedlift.md) | 73 | `declaration-track:33911fc752e0a356d3b589e1a9448a939252a6ece1e514fa0c7870a78789bb6a` |
| 5 | `lemma` | [leftDerived_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/leftderived-fac.md) | 78 | `result-track:decfdc78cf196eb8a5a1532a71d5fa6012236f282224397204755be772895d96` |
| 6 | `lemma` | [leftDerived_fac_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/leftderived-fac-app.md) | 84 | `result-track:bd6c505ddc607a16b72b721c4e450fbfbf06d6fd622442b11fece8549a44680e` |
| 7 | `lemma` | [leftDerived_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/leftderived-ext.md) | 90 | `result-track:7095a5c68a671c5b39b06503172dff2c8e81739584138bcb58f137aca038ec8d` |
| 8 | `def` | [leftDerivedNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/leftderivednattrans.md) | 97 | `declaration-track:9429d69286806d2408eab9ce17dc7a21f8862857bb4d0981a7d62ab72593a686` |
| 9 | `lemma` | [leftDerivedNatTrans_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/leftderivednattrans-fac.md) | 101 | `result-track:73e8bf97dac320d45bb0fef05bc0f779766e9098d43b8d8dfd57f2459131aa6c` |
| 10 | `lemma` | [leftDerivedNatTrans_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/leftderivednattrans-app.md) | 107 | `result-track:5e1e034a57c2b25273244eb64b8f42d81f89630e938998227f0651b536bd093a` |
| 11 | `lemma` | [leftDerivedNatTrans_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/leftderivednattrans-id.md) | 114 | `result-track:3f4a25e648766a57f453ce6173a2743810077d082201cb109fe060c8616966f1` |
| 12 | `lemma` | [leftDerivedNatTrans_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/leftderivednattrans-comp.md) | 121 | `result-track:704afa7deadf613f4ba5c3eac46e89ed1155c360406b93c30a45872bf4c6e7b1` |
| 13 | `def` | [leftDerivedNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/leftderivednatiso.md) | 129 | `declaration-track:bf4f0f395c55d6ac7b28da46b4c3dc2a2668c4bee16dfc0b2eaa614d9ff3e38e` |
| 14 | `abbrev` | [leftDerivedUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/leftderivedunique.md) | 135 | `declaration-track:574bd836da5f1d790c799b6d33d91f1a9214947713d8687f008eb67e820a8151` |
| 15 | `lemma` | [isLeftDerivedFunctor_iff_isIso_leftDerivedLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/isleftderivedfunctor-iff-isiso-leftderivedlift.md) | 138 | `result-track:0c9f3baa1628aae90343b9be286f18795af78c0822c7284e3142428adbbd71c5` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/instance-source-edition-2.md) | 144 | `declaration-track:611e02b1bc53888a9a746af0297d28a434cff2efd4c8ab9c23a2a829a2ca65db` |
| 17 | `class` | [HasLeftDerivedFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/hasleftderivedfunctor.md) | 159 | `declaration-track:c549a1ff8c659c7d0f62986eccc7a85f27f8e7a86727d5cbeff36c1cb996d143` |
| 18 | `lemma` | [hasLeftDerivedFunctor_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/hasleftderivedfunctor-iff.md) | 165 | `result-track:00509f21f929b49ecd9c4cc2dd018940586919f80dc2ba598429c64f87a73829` |
| 19 | `lemma` | [hasLeftDerivedFunctor_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/hasleftderivedfunctor-iff-of-iso.md) | 174 | `result-track:499d7aaab0187168c62a66e60a45d046795ef90f85adc443bfae558634888762` |
| 20 | `lemma` | [HasLeftDerivedFunctor.hasRightKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/hasleftderivedfunctor-hasrightkanextension.md) | 181 | `result-track:5169fec2d38e588cb34fb2efd39a2323a36f5d7fadef5228cc6c89caa70b03d6` |
| 21 | `lemma` | [HasLeftDerivedFunctor.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/hasleftderivedfunctor-mk.md) | 187 | `result-track:b3834f3639b9d05341a04d4521a369f765d9bbef438a0aac6f515f9630d77c68` |
| 22 | `def` | [totalLeftDerived](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/totalleftderived.md) | 199 | `declaration-track:62409a8dc784c591d6a3de045144decadfd8cc8f020b1fdd184519ca031ece92` |
| 23 | `def` | [totalLeftDerivedCounit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/totalleftderivedcounit.md) | 204 | `declaration-track:5cf966119c2c2deb57ed0c7401fe72543ff61052a3bdf931caebacd82e0356d5` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/instance.md) | 208 | `declaration-track:5e5c114756be2dd88b28ace59e5224157a6d75f54929543f7d25676c183a1c68` |
| 25 | `lemma` | [isLeftDerivedFunctor_iff_precomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedLeftDerivedPublic.lean/declarations/isleftderivedfunctor-iff-precomp.md) | 225 | `result-track:7cb0f530c81594e5ce6afdfa9fdad9aab5f6bf5a0af1001048e7abd1c6553372` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12f43273667a260897b94e87c71ade70e3538d403dd713cff4135b1c97d99720 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant626cd12a6685898782f57f242a9ead92e1eb2ed8f428b43e572944250dfac85b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant626cd12a6685898782f57f242a9ead92e1eb2ed8f428b43e572944250dfac85b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

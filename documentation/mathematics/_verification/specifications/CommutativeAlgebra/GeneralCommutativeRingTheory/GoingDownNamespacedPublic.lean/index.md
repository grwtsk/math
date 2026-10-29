# Verification target: Going Down Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e193c222db3b3b6a600fb0e6f829d845eb6f239",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespacedPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e193c222db3b3b6a600fb0e6f829d845eb6f239`.

Source path: `GRWTSK/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean.json)

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
| 1 | `class` | [Algebra.HasGoingDown](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespacedPublic.lean/declarations/algebra-hasgoingdown.md) | 52 | `declaration-track:6ae9128a65fe1e2b68992d12654caa6df1f6a7b365c334ec8103b5f9d64d3ca1` |
| 2 | `lemma` | [Ideal.exists_ideal_le_liesOver_of_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespacedPublic.lean/declarations/ideal-exists-ideal-le-liesover-of-le.md) | 58 | `result-track:c95ab56986289b7fdc4fcc972d36fe8e89c39fefb8a02c83276e9ce5aa97bcbf` |
| 3 | `lemma` | [Ideal.exists_ideal_lt_liesOver_of_lt](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespacedPublic.lean/declarations/ideal-exists-ideal-lt-liesover-of-lt.md) | 69 | `result-track:156a78916dd794e6fd0de58ba2e2691928e1e23ff039632d7efc96c8e68fc4d7` |
| 4 | `lemma` | [Ideal.exists_ltSeries_of_hasGoingDown](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespacedPublic.lean/declarations/ideal-exists-ltseries-of-hasgoingdown.md) | 79 | `result-track:7bfde304df60a69296addc6079429fef5d46d5a5a0df3b99b2ae4d2c21433853` |
| 5 | `lemma` | [iff_generalizingMap_primeSpectrumComap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespacedPublic.lean/declarations/iff-generalizingmap-primespectrumcomap.md) | 114 | `result-track:fed63f50a587fd5dd3cc578dc82a274c0908f31c236b200172272ed196ed306e` |
| 6 | `lemma` | [trans](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespacedPublic.lean/declarations/trans.md) | 133 | `result-track:b44415f6b128b249c7ec7db5baef8125bff31deb706ed3fa4067e733e1ff350e` |
| 7 | `lemma` | [of_comap_localRingHom_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespacedPublic.lean/declarations/of-comap-localringhom-surjective.md) | 144 | `result-track:0298451f1606cb3b348a7594de00a33a2078aa2d702599ac04462b3cff1ce1c3` |
| 8 | `instance` | [of_flat](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespacedPublic.lean/declarations/of-flat.md) | 162 | `declaration-track:46a9d5fa181ce8ebb0d1d11329d425c04b7d531e437e55609654319f136b2898` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cea1e1d6746bb2b0bb71ec311d36dab83688de11d8e98d235d5d2b1363a80dd8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean","GRWTSK/_verification/specifications/Algebra/GoingDown/Variant27d6f9cd12f917811a9423f19ac7ceda5e973af610e76c5eb5b7815c93304fac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

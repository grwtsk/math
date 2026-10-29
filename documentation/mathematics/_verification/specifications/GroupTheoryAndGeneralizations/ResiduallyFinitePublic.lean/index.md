# Verification target: Residually Finite Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "652487530cddcedd915c7b030adff26bb45340e9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ResiduallyFinite/Variant7483fd620fabbe175a1b797e85f32a021a7abfcddb6c5311b13cf52e80674ef2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `652487530cddcedd915c7b030adff26bb45340e9`.

Source path: `GRWTSK/Algebra/GroupTheory/ResiduallyFinite/Variant7483fd620fabbe175a1b797e85f32a021a7abfcddb6c5311b13cf52e80674ef2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ResiduallyFinite/Variant7483fd620fabbe175a1b797e85f32a021a7abfcddb6c5311b13cf52e80674ef2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddGroup.ResiduallyFinite](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/declarations/addgroup-residuallyfinite.md) | 26 | `declaration-track:341109b3b3f1e5fd9efbff40a06400da61cbdf45769d0b438341b2e930d37db0` |
| 2 | `class` | [ResiduallyFinite](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/declarations/residuallyfinite.md) | 33 | `declaration-track:0c8dc714322d6a893431efb640ca1205d79b253d74812d0239850abf1982ffcb` |
| 3 | `theorem` | [residuallyFinite_def](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/declarations/residuallyfinite-def.md) | 41 | `result-track:b720edcf609de005558b550571e825916523aef29e45ea99fd48d548fe2b2fb3` |
| 4 | `theorem` | [residuallyFinite_iff_forall_finiteIndexNormalSubgroup](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/declarations/residuallyfinite-iff-forall-finiteindexnormalsubgroup.md) | 46 | `result-track:47a69208a020e35b0c34e0fb4fa6829368f3e145c28b83dc4e19b3d21b34f860` |
| 5 | `theorem` | [eq_one_iff_forall_finiteIndexNormalSubroup](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/declarations/eq-one-iff-forall-finiteindexnormalsubroup.md) | 52 | `result-track:027926b3e152f64ddc9291d623bca69d74fa9b079c08a00701f7835f34180c7b` |
| 6 | `theorem` | [residuallyFinite_iff_exists_finiteIndexNormalSubgroup](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/declarations/residuallyfinite-iff-exists-finiteindexnormalsubgroup.md) | 57 | `result-track:55bc0cc3eb03e1f5f61fda90f13dabddbab29c61406c7d552eac746b1deb776c` |
| 7 | `theorem` | [exists_finiteIndexNormalSubgroup_notMem](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/declarations/exists-finiteindexnormalsubgroup-notmem.md) | 62 | `result-track:10b98403538586ec0a67411641563e91f911888ca872e1c1e7f5f95db9836dad` |
| 8 | `theorem` | [residuallyFinite_iff_forall_finiteIndex](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/declarations/residuallyfinite-iff-forall-finiteindex.md) | 67 | `result-track:de6ad437da200f1e67c69c6438270452c9feee613457db28e7596c90667a4198` |
| 9 | `theorem` | [residuallyFinite_iff_exists_finiteIndex](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/declarations/residuallyfinite-iff-exists-finiteindex.md) | 74 | `result-track:f2f1b31eba30d3d5912359d82833096f96eee6d7ab8bf5211bd859c5551dcd24` |
| 10 | `theorem` | [exists_finiteIndexNormalSubgroup_of_residuallyFinite](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/declarations/exists-finiteindexnormalsubgroup-of-residuallyfinite.md) | 84 | `result-track:b55fce6b3123b6b56b809664bfd308de119dca923ea134cbd17b8aea398c3c45` |
| 11 | `theorem` | [residuallyFinite_of_forall_exists_finite_monoidHom.](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/declarations/residuallyfinite-of-forall-exists-finite-monoidhom.md) | 94 | `result-track:7534ba5d77b1e7b4141535816ce01dca08882ac2fd1d54c633569090149603d6` |
| 12 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/declarations/instance-source-edition-2.md) | 103 | `declaration-track:c05ccf834605876fb669eee4b9cea0030cf680061b59351616889f47dc5c4c63` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/declarations/instance.md) | 107 | `declaration-track:5642e1210e0b9938b30a8c10ec8f8dea0a78fd7777ab27a0620fd18c8d2bc42a` |
| 14 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ResiduallyFinitePublic.lean/declarations/instance-source-edition-3.md) | 114 | `declaration-track:c3482587cd37a0881bf686c8f319ea388cdafcfae7f580a5f95aa8643ad5c7e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44ce6b22a14eda1b34c46943d0886615ddde49997138e4bc403dc7d70a91eeb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/ResiduallyFinite/Variant7483fd620fabbe175a1b797e85f32a021a7abfcddb6c5311b13cf52e80674ef2.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/ResiduallyFinite/Variant7483fd620fabbe175a1b797e85f32a021a7abfcddb6c5311b13cf52e80674ef2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

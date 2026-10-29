# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WilesBoundary.Variant2e45ec6cf7ce71723377d9b5895b0836991d90626056bee726029ce9b3958679

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7917f9ce1d7d481d1cabada231b4ed361542a697` · SHA-256 `2e45ec6cf7ce71723377d9b5895b0836991d90626056bee726029ce9b3958679`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.ModularWave.FiniteQWave
import Think.SourceTree.Legacy.ModularWave.LFunctionLowering

namespace Think.ModularWave

inductive ExternalTheoremArtifactKind where
  | Wiles_1995
  | Taylor_Wiles_1995
  | scoped_external_theorem
  deriving DecidableEq

structure WilesAuthorityArtifact where
  artifactKind : ExternalTheoremArtifactKind
  externalScoped : Bool
  repoLocalWilesProofClaim : Bool
  repoLocalTaylorWilesProofClaim : Bool
  repoLocalModularityProofClaim : Bool
  fermatLastTheoremProofClaim : Bool
  permittedBoundaryUseOnly : Bool

def WilesAuthorityArtifact.IsExternalScopedArtifact
    (artifact : WilesAuthorityArtifact) : Prop :=
  artifact.externalScoped = true /\
  artifact.repoLocalWilesProofClaim = false /\
  artifact.repoLocalTaylorWilesProofClaim = false /\
  artifact.repoLocalModularityProofClaim = false /\
  artifact.fermatLastTheoremProofClaim = false /\
  artifact.permittedBoundaryUseOnly = true

structure ForbiddenAuthorityFlags where
  rhClaim : Bool
  analyticContinuationClaim : Bool
  primePredictionClaim : Bool
  spectralAuthority : Bool
  modularityProofClaim : Bool
  repoLocalWilesProofClaim : Bool

def ForbiddenAuthorityFlags.NoForbiddenAuthority
    (flags : ForbiddenAuthorityFlags) : Prop :=
  flags.rhClaim = false /\
  flags.analyticContinuationClaim = false /\
  flags.primePredictionClaim = false /\
  flags.spectralAuthority = false /\
  flags.modularityProofClaim = false /\
  flags.repoLocalWilesProofClaim = false

theorem wiles_artifact_external_only
    (artifact : WilesAuthorityArtifact)
    (hArtifact : artifact.IsExternalScopedArtifact) :
    artifact.repoLocalWilesProofClaim = false /\
    artifact.repoLocalTaylorWilesProofClaim = false /\
    artifact.repoLocalModularityProofClaim = false /\
    artifact.fermatLastTheoremProofClaim = false := by
  exact
    And.intro hArtifact.right.left
      (And.intro hArtifact.right.right.left
        (And.intro hArtifact.right.right.right.left
          hArtifact.right.right.right.right.left))

theorem forbidden_authority_not_introduced
    (lfun : LFunctionExpression)
    (artifact : WilesAuthorityArtifact)
    (hLfun : lfun.IsFiniteExpression)
    (hArtifact : artifact.IsExternalScopedArtifact) :
    lfun.rhClaim = false /\
    lfun.analyticContinuationClaim = false /\
    lfun.primePredictionClaim = false /\
    lfun.spectralAuthority = false /\
    lfun.modularityProofClaim = false /\
    artifact.repoLocalWilesProofClaim = false /\
    artifact.repoLocalModularityProofClaim = false := by
  exact
    And.intro hLfun.right.right.right.left
      (And.intro hLfun.right.right.right.right.left
        (And.intro hLfun.right.right.right.right.right.left
          (And.intro hLfun.right.right.right.right.right.right.left
            (And.intro hLfun.right.right.right.right.right.right.right
              (And.intro hArtifact.right.left
                hArtifact.right.right.right.left)))))

end Think.ModularWave
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=380973d85d863a20e142b880158ff5b73c154b4533737da3498ff47c1a76975a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WilesBoundary/Variant2e45ec6cf7ce71723377d9b5895b0836991d90626056bee726029ce9b3958679.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

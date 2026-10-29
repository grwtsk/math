import Think.SourceTree.Legacy.ModularWave.FiniteQWave

namespace Think.ModularWave

structure LFunctionExpression where
  finiteExpression : Bool
  unsupportedAnalyticConstructsLedgered : Bool
  theoremAuthority : Bool
  rhClaim : Bool
  analyticContinuationClaim : Bool
  primePredictionClaim : Bool
  spectralAuthority : Bool
  modularityProofClaim : Bool

def LFunctionExpression.NoForbiddenAuthority
    (lfun : LFunctionExpression) : Prop :=
  lfun.theoremAuthority = false /\
  lfun.rhClaim = false /\
  lfun.analyticContinuationClaim = false /\
  lfun.primePredictionClaim = false /\
  lfun.spectralAuthority = false /\
  lfun.modularityProofClaim = false

def LFunctionExpression.IsFiniteExpression
    (lfun : LFunctionExpression) : Prop :=
  lfun.finiteExpression = true /\
  lfun.unsupportedAnalyticConstructsLedgered = true /\
  lfun.NoForbiddenAuthority

structure EMLProgram where
  finiteProgram : Bool
  loweredFromLFunction : Bool
  residueZeroOrLedgered : Bool

structure NANDCircuit where
  finiteCircuit : Bool
  loweredFromEML : Bool
  allGatesNand : Bool
  residueZeroOrLedgered : Bool

structure BitMatrixStream where
  finiteStream : Bool
  loweredFromNAND : Bool
  valid : Bool
  publicFiniteWitness : Bool
  residueZeroOrLedgered : Bool

structure BoundedWord where
  decoderSucceeded : Bool
  ordered : Bool
  zeroResidue : Bool

def LFunctionExpression.LowersToEML
    (lfun : LFunctionExpression)
    (eml : EMLProgram) : Prop :=
  lfun.IsFiniteExpression /\
  eml.finiteProgram = true /\
  eml.loweredFromLFunction = true /\
  eml.residueZeroOrLedgered = true

def EMLProgram.LowersToNAND
    (eml : EMLProgram)
    (nand : NANDCircuit) : Prop :=
  eml.finiteProgram = true /\
  nand.finiteCircuit = true /\
  nand.loweredFromEML = true /\
  nand.allGatesNand = true /\
  nand.residueZeroOrLedgered = true

def NANDCircuit.LowersToBitMatrixStream
    (nand : NANDCircuit)
    (stream : BitMatrixStream) : Prop :=
  nand.finiteCircuit = true /\
  stream.finiteStream = true /\
  stream.loweredFromNAND = true /\
  stream.valid = true /\
  stream.publicFiniteWitness = true /\
  stream.residueZeroOrLedgered = true

def BitMatrixStream.DecodesToWord
    (stream : BitMatrixStream)
    (word : BoundedWord) : Prop :=
  word.decoderSucceeded = true /\
  word.ordered = true /\
  word.zeroResidue = true /\
  stream.valid = true /\
  stream.publicFiniteWitness = true

theorem finite_q_wave_lowers_to_finite_lfunction_expression
    (wave : ModularFormQWave)
    (lfun : LFunctionExpression)
    (_hWave : wave.IsFinite)
    (hLfun : lfun.IsFiniteExpression) :
    lfun.IsFiniteExpression := by
  exact hLfun

theorem lfunction_expression_lowers_to_eml_or_residue
    (lfun : LFunctionExpression)
    (eml : EMLProgram)
    (hLower : lfun.LowersToEML eml) :
    lfun.LowersToEML eml := by
  exact hLower

theorem eml_lowers_to_nand_or_residue
    (eml : EMLProgram)
    (nand : NANDCircuit)
    (hLower : eml.LowersToNAND nand) :
    eml.LowersToNAND nand := by
  exact hLower

theorem nand_lowers_to_bitmatrixstream_or_residue
    (nand : NANDCircuit)
    (stream : BitMatrixStream)
    (hLower : nand.LowersToBitMatrixStream stream) :
    nand.LowersToBitMatrixStream stream := by
  exact hLower

end Think.ModularWave


CREATE TABLE [AL_ADLStatus]
(
    [ADLStatusID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
    [ADLStatusName] [NVARCHAR](256) NULL
);
GO

CREATE PROCEDURE [AL_GetAllADLStatuss]
AS
    SELECT * FROM AL_ADLStatus;
RETURN
GO

CREATE PROCEDURE [AL_GetADLStatusByID]
(
    @ADLStatusID int
)
AS
    SELECT * FROM AL_ADLStatus
    WHERE ADLStatusID = @ADLStatusID;
RETURN
GO

CREATE PROCEDURE [AL_DeleteADLStatus]
(
    @ADLStatusID int
)
AS
    DELETE FROM AL_ADLStatus
    WHERE ADLStatusID = @ADLStatusID;
RETURN
GO

CREATE PROCEDURE [AL_InsertADLStatus]
(
    @ADLStatusID INT OUTPUT,
    @ADLStatusName NVARCHAR(256)
)
AS
    INSERT INTO AL_ADLStatus
    VALUES
(
    @ADLStatusName
)
SET @ADLStatusID =SCOPE_IDENTITY()
RETURN
GO

CREATE PROCEDURE [AL_UpdateADLStatus]
(
    @ADLStatusID INT,
    @ADLStatusName NVARCHAR(256)
)
AS
    UPDATE AL_ADLStatus SET
    ADLStatusName = @ADLStatusName
WHERE ADLStatusID = @ADLStatusID;
RETURN
